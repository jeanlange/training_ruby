#!/usr/bin/ruby
# I'm bad at procs, I did this to look at/further understand your slide myself.

outer_var = 1

def call_a_proc_with_arg_99 a_proc
  local = 99
  begin
    puts "outer_var: #{outer_var}"
  rescue NameError => e
    puts "I can't access outer_var from in here!"
  end
  a_proc.call(local)
  puts "local: #{local}"
  puts "argument is a #{a_proc.class}"
end

call_a_proc_with_arg_99 Proc.new { |var| outer_var += var }
puts "outer_var: #{outer_var}"