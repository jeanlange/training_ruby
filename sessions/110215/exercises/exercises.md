# Ex 1 - Hello World

Display the phrase "Hello, World!" to the screen

`Hello, Justin`

# Ex 2 - Hello, Joe

Display the phrase "Hello, Joe!" to the screen, but instead of "Joe", use a
variable containing your name to get the following output.

`Hello, Justin!`

# Ex 3 - Respectable hello

Set the variable containing your name to all lower case. Using methods on
Ruby's `String` class, properly capitalize all names sent through. Your output
will look the same as the previous exercise.

`Hello, Justin!`


# Ex 4 - How old are you now?

Display your age in days by using the calculation years * 365 to get the
following output.

`Justin is about 10220 days old`

# Ex 5 - Biography

Store the following information about you in one object: name, age, job title.

Store the same information about 2 classmates and create an array to represent
the class roster.

Use that object to output information about you and your classmates.

```
Splinter, Trainer, is 38
Michaelangelo, Developer, is 15
Raphael, Lead, is 16
```

```ruby
ice_creams = [
  {name: 'chocolate', sugar: '42g'},
  {name: 'vanilla', sugar: '40g'},
  {name: 'swirl', sugar: '39g'},
]

puts ice_creams[0][:name]
#=> chocolate
```

# Ex 6 - Roll call

Using the same roster structure from from the previous exercise, add an attribute to represent presence in the class. For each student that is not in class, put out a line that says "Oh no! #{name} is absent!". If they aren't, print their name.

```ruby
splinter = {name: 'Splinter', title: 'Trainer', age: 38}
mike = {name: 'Michaelangelo', title: 'Developer', age: 15}
raph = {name: 'Raphael', title: 'Lead', age: 16}

roster = [splinter, mike, raph]

puts "#{roster[0][:name]}, a #{roster[0][:title]}, is #{roster[0][:age]} years old"
puts "#{roster[1][:name]}, a #{roster[1][:title]}, is #{roster[1][:age]} years old"
puts "#{roster[2][:name]}, a #{roster[2][:title]}, is #{roster[2][:age]} years old"

[1,2,3,4].each do |number|
  break if number == 2
  puts number
end
```

```
Justin
Splinter
Fred
Oh no! Shredder is absent
Mike
```

# Ex 7 - Fancy roster printouts/Excused absenses

Using the same roster from before, make the output look a little nicer. If a student is present, output:

```
Name: Justin
Age: 28
Title: Instructor
```

If the student is absent, output:
```
Name: Justin is absent!
```

Except absent now means the combination of being absent and not having an excuse

# Ex 8 - Student class

Replace the student hashes used before with a class to represent students. Build
your own initializer to accept the hash that you created before.

```ruby
class Dog
  attr_accessor :name, :height
  def initialize(hash_of_attributes)
    @name = hash_of_attributes[:name]
    @height = hash_of_attributes[:height]
  end
end

```

```ruby
Student.new(hash)
```

Now, instead of accessing the attributes from a hash, create attributes on
`Students` that allow you to get the same info with a shorter syntax.

```ruby
puts my_student.name
```

# Ex 9 - Roster service

Create a class that represents a service that manages the roster. Accept a list
of students.

```ruby
roster_service = RosterService.new(roster)
```

Use the service to get the same output from before by calling

```ruby
roster_service.print
```

# Ex 10 - Copy a File

Using Ruby's built in File class, write a program that copies one text file to another name. For example, copy 'turtles.csv' to 'turtles2.csv'.

```ruby
f = File.open('turtles.csv')

file_text = f.read

f.each_line do |turtle_data|
  array_of_data = turtle_data.split(',')
  first_column = array_of_data[0]
  puts first_column
end

my_new_file = File.open('output_file', 'w')
my_new_file.puts "Hello world"
my_new_file.close
```

# Bonus - Precisely how old are you now?

Using the built in date and time classes, calculate the exact number of days
old you are.

`Justin is precisely 10345 days old`

# Bonus - Fizz Buzz

You now have the tools to make a basic Ruby program Let's write fizz buzz

- For every number 1 through 100, output that number.
- Unless the number is divisible by 3.Then put "Fizz".
- Unless the number is divisible by 5.Then put "Buzz"
- Unless the number is divisible by 5 and 3.Then put "FizzBuzz"

Hint: look at the Integer documentation page for easier ways to get 1 through 100

```ruby
  # check a number is even
  if number % 2 == 0
    'this number is even'
  else
    'this number is odd'
  end
```
