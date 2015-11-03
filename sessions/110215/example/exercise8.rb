class Student
  attr_reader :name, :title, :age, :present, :excuse

  def initialize(atts)
    @name    = atts[:name]
    @title   = atts[:title]
    @age     = atts[:age]
    @present = atts[:present]
    @excuse  = atts[:excuse]
  end

  def present?
    present or excuse != ''
  end
end

splinter = Student.new({name: 'Splinter', title: 'Trainer', age: 38, present: true, excuse: ''})
mike = Student.new({name: 'Michaelangelo', title: 'Developer', age: 14, present: true, excuse: ''})
raph = Student.new({name: 'Raphael', title: 'Leader', age: 14, present: true, excuse: ''})
don = Student.new({name: 'Donatello', title: 'Developer', age: 14, present: false, excuse: 'Fighting crime'})
leo = Student.new({name: 'Leonardo', title: 'Developer', age: 14, present: false, excuse: ''})
roster = [splinter, raph, don, leo, mike]

def output(student)
  <<-OUTPUT
 Name: #{student.name}\n
  Age: #{student.age}\n
Title: #{student.title}
  OUTPUT
end

roster.each do |student|
  if student.present?
    puts output(student)
  else
    puts "OH NO! #{student.name} is absent!"
  end
end
