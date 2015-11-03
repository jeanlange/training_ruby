class Person
  attr_accessor :first_name, :last_name

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

joe = Person.new
joe.first_name = 'Joe'
joe.last_name = 'Smith'

puts joe.full_name
