require 'pry'

path = File.join('.','exercises','data','all_albums.md')
file = File.open path

if file.ctime.friday?
  puts 'Good job working hard on a Friday'
else
  puts "This file was created on a #{file.ctime.strftime('%A')}"
end

name = ARGV[1]
info = file.read.to_s
if info =~ /#{name}/i
  puts 'My name is in the file'
end
