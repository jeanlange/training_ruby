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

  def regular_output
    <<-OUTPUT
   Name: #{name}
    Age: #{age}
  Title: #{title}
    OUTPUT
  end

  def absent_output
    "OH NO! #{name} is absent!"
  end

  def output
    if present?
      regular_output
    else
      absent_output
    end
  end
end

splinter = Student.new({name: 'Splinter', title: 'Trainer',
  age: 38, present: true, excuse: ''})
mike = Student.new({name: 'Michaelangelo', title: 'Developer',
  age: 14, present: true, excuse: ''})
raph = Student.new({name: 'Raphael', title: 'Leader',
  age: 14, present: true, excuse: ''})
don = Student.new({name: 'Donatello', title: 'Developer',
  age: 14, present: false, excuse: 'Fighting crime'})
leo = Student.new({name: 'Leonardo', title: 'Developer',
  age: 14, present: false, excuse: ''})

roster = [splinter, raph, don, leo, mike]

roster.each do |student|
  puts student.output
end
