class NoEsError < StandardError
  def initialize(msg, violator)
    msg += " Message was: #{violator}"
    super msg
  end
end

def run
  puts "Why is ruby good? No e's allowed"
  string = gets
  raise NoEsError.new('I said "no e\'s"!', string) if string =~ /e/
end

def program
  run
rescue
  puts e.message
end

program
