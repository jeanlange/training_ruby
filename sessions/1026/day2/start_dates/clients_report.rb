require 'date'
require 'csv'

class BadDataError < StandardError
  attr_accessor :bad_client

  def initialize(msg, bad_client)
    @bad_client = bad_client
  end
end

class ClientsReport
  def report
    begin
      output = ''
      @clients = []

      weekend_starter = false
      CSV.read('client_data.csv', headers: true).each do |source_line|
        date = Date.parse(source_line[' Start Date'])

        client = {name: source_line['Client Name '], start_date: date}
        weekend_starter = client if date.saturday? or date.sunday?
        @clients << client
      end

      if weekend_starter
        raise BadDataError.new('Clients can\'t start on weekends', weekend_starter)
      end

      grouped_clients = clients.group_by{|client| client[:start_date] }
      grouped_clients.any? do |date, clients_group|
        if clients_group.size > 1
          output += date.strftime("These #{clients_group.size} clients "+
                             "started on the same day. It was a %A in %B")

          clients_group.each do |client|
            output += "- #{client[:name]}"
          end
        end
      end

      first = clients.min_by{|client| client[:start_date] }
      output += "#{first[:name]} started first and started on #{first[:start_date]}"
      output
    rescue => e
      e.bad_client[:start_date] += 2
      retry
    end
  end
end
