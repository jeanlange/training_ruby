class Homepage
  def fill_in_name(arg)
    puts "I filled in the name with #{arg}"
  end

  def fill_in_age(arg)
    puts "I filled in the age with #{arg}"
  end
end

page = Homepage.new

require 'csv'
file_contents = File.open('/Users/justin/github/builderworksco/training_ruby/sessions/110215/example/turtles.csv').read

CSV.readlines(file_contents, headers: true) do |line|
  page.fill_in_age line['age']
  page.fill_in_name line['name']
end
