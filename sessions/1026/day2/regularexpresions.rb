source_file = File.open 'client_data.csv'
regex = /(?<name_first>\w.+\b)\s(?<name_last>\w.+\b)\s,/

source_file.each_line do |source_line|
  match = regex.match source_line
  puts match[:name_first] rescue nil
end
