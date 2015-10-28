require './report'

report = Report.new
f = File.new('out.txt', 'w')
f.puts report.output
