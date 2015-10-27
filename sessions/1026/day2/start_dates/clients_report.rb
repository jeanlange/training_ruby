require 'date'
require 'csv'

class ClientsReport
  def report
    output = ''
    clients = []

    CSV.read('client_data.csv', headers: true).each do |source_line|
      date = Date.parse(source_line[' Start Date'])
      output += 'This person started on a weekend!' if date.saturday? or date.sunday?
      clients << {name: source_line['Client Name '], start_date: date}
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
  end
end
