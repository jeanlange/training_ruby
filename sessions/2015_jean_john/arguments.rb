def options(name, options = {})
  puts name
  puts options
end

options "jean", :a => 1, :b => 2 # bad style
options "jean", :a => 1 # good
options "jean", {:a => 1, :b => 2} # good

# talking about parens on function calls and intelligent evaluation of what arguments are supposed to be.