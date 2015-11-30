# to explore passing by reference vs value. Ruby is pass by reference to value object.
# John says:
## Ruby passes by reference
## but = always creates a new object, and therefore doesn't work the way you expect.
## because 'new object' assigning to a reference doesn't work.

# This example came from Overflow.
def change_string(str)
  str << " I can insult you all you want"
  str << " because you'll never see this"
  str << " because I'm going to replace the whole string!"
  str << " Haha you smell bad!"
  str = "What? I didn't say anything." # I'm so sneaky
end

be_nice_to_me = "hello"
change_string(be_nice_to_me)
puts be_nice_to_me # has all the insults in it!!!

# John and I came up with the following examples
# which means that even though this doesn't change things:

a = "hello"
b = a
puts "a: #{a}, b: #{b}"
a = "hi"
puts "a: #{a}, b: #{b}" # b maintains the original value even though a has changed

# this does:

a = "hello"
b = a
puts "a.to_s: #{a.to_s}, b.to_s: #{b.to_s}"
def a.to_s
  "hi"
end # instead of using an assignment, I am changing the singleton methods of a. Even though a is a String, a stdlib class.
puts "a.to_s: #{a.to_s}, b.to_s: #{b.to_s}" # b.to_s is the same as a.to_s.