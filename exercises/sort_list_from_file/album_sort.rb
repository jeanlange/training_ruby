require 'pry'

path = File.join(File.dirname(__FILE__),'..','data','albums.md')
albums = File.open(path)

albums = albums.readlines
albums.map!(&:capitalize)
albums.sort!
albums.map! do |album|
  splits = album.split
  splits.map! do |word|
    stop_words = ['in','the','of','or','a','is','to']
    word.capitalize! unless stop_words.include? word
    word
  end
  splits.join(" ")
end

File.new('sorted_albums.txt', 'w').puts albums
puts "#{albums.size} items sorted"
