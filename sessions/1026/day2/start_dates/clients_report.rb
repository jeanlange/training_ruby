require 'date'
source = File.open('../client_data.csv')

clients = []

source.each_line do |source_line|
  date_regex = /(?<name_first>\w.+\b)\s(?<name_last>\w.+\b)\s,.+(?<date>\d{4}-\d{2}-\d{2})$/

  if date_match = date_regex.match(source_line)
    date = Date.parse(date_match[:date])

    # Check that nobody started on a weekend
    if date.saturday? or date.sunday?
      puts 'This person started on a weekend!'
    end

    client = {name: date_match[:name_first], start_date: date}
    clients << client
  end
end

grouped_clients = clients.group_by{|client| client[:start_date] }
grouped_clients.any? do |date, clients_group|
  if clients_group.size > 1
    puts date.strftime("These #{clients_group.size} clients "+
                       "started on the same day. It was a %A in %B")

    clients_group.each do |client|
      puts "- #{client[:name]}"
    end
  end
end

first = clients.min_by{|client| client[:start_date] }
puts "#{first[:name]} started first and started on #{first[:start_date]}"
