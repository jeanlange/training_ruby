<style type="text/css">
  .markdown-body ul ul, .markdown-body ul ol, .markdown-body ol ol, .markdown-body ol ul { list-style-type: upper-alpha; }
  .answer {
  /*
  border: 1px solid black; padding: 3px; background-color: tan;
  */
  }
</style>

# Intro to Ruby quiz

1. What was Ruby created for?

  1. <span class="answer">Programmer happiness</span>
  1. Parsing XML
  1. Concurrency based programming
  1. Testing
  1. I don't know

1. What does monkey patching mean?

  1. Code changes in production
  1. A small fix that even a monkey could make
  1. <span class="answer">Re-opening a class to change its functionality</span>
  1. A method in a class that allows access to its attributes
  1. I don't know
<!-- 4 -->

1. In Ruby, objects are considered "duck typed" because:

  1. <span class="answer">They aren't checked for type, only how they act</span>
  1. They act differently in every case
  1. They have a common ancestor
  1. They can be retrieved with the same caller
  1. I don't know

1. Which method builds a file path best?

  1. `File.path_for('my_file')`
  1. <span class="answer">`File.join('path','to','file')`</span>
  1. `File.path('path to file')`
  1. `File.search('path','to','file')`
  1. I don't know
<!-- 3 -->

1. Which module defines convenience methods like `gets`, `puts`, and `catch`?

  1. `Object`
  1. `Global`
  1. `Eval`
  1. <span class="answer">`Kernel`</span>
  1. I don't know

1. What method do you overwrite to build a custom constructor for a class?

  1. `construct`
  1. `constructor`
  1. <span class="answer">`initialize`</span>
  1. `build`
  1. I don't know

1. Which of the following bits of code builds an expectation in RSpec?

  1. <span class="answer">`expect(variable).to eq expected_value`</span>
  1. `variable should equal value`
  1. `RSpec::Expectation.new(variable, value).equals`
  1. `assert variable == value`
  1. I don't know

1. How do you write an "else if" condition in Ruby?

  1. <span class="answer">`elsif condition`</span>
  1. `else if condition`
  1. `elseif condition`
  1. `else(if condition)`
  1. I don't know
<!-- 5 -->

1. How do you declare a String in Ruby?

  1. `new String("my string")`
  1. <span class="answer">`"my string"`</span>
  1. `String.construct("my string")`
  1. `String "my string"`
  1. I don't know
<!-- 7 -->

1. Which of these is defining a Hash with symbol keys?

  1. `[:name, 1]`
  1. <span class="answer">`{name: 1}`</span>
  1. `['name' => 1]`
  1. `{name => 1}`
  1. I don't know

1. How do you access the number 3 in this array [1,2,3,4,5] assuming it is assigned to the variable `nums`?

  1. <span class="answer">`nums[2]`</span>
  1. `nums[3]`
  1. `nums.2`
  1. `nums.3`
  1. I don't know
<!-- 9 -->

1. Which of the following declarations of a variable is correct?

  1. `var name: "Justin"`
  1. `var name string = "Justin"`
  1. <span class="answer">`name = "Justin"`</span>
  1. `string name = "Justin"`
  1. I don't know
<!-- 9 -->

1. How can you include the module named "TestHelpers" in your code?

  1. <span class="answer">`include TestHelpers`</span>
  1. `::TestHelpers`
  1. `require TestHelpers`
  1. `#= TestHelpers`
  1. I don't know

1. Which of the following is the way to set up inheritance on a Ruby class?

  1. `class Worker inherits Person`
  1. `class Worker::Person`
  1. <span class="answer">`class Worker < Person`</span>
  1. `class Worker, Person`
  1. I don't know
<!-- 6 -->

1. How do you declare a private method?

  1. <span class="answer">define it below the `private` keyword</span>
  1. `def private void method_name`
  1. `private method_name`
  1. `def *method_name`
  1. I don't know
<!-- 4, needs better in class emphasis -->

1. Which of the following is the syntax for an instance variable name?

  1. <span class="answer">`@instance_variable`</span>
  1. `@@instance_variable`
  1. `$instance_variable`
  1. `.instance_variable`
  1. I don't know
<!-- 7 -->

1. What is the command to install project dependencies with bundler?

  1. <span class="answer">`bundle install`</span>
  1. `bundle get`
  1. `bundle update`
  1. `bundle init`
  1. I don't know

1. Which file does Bundler read to find project dependencies?

  1. `Bundler.lock`
  1. <span class="answer">`Gemfile`</span>
  1. `dep.gems`
  1. `list.gems`
  1. I don't know

1. How do you get the current time in Ruby?

  1. `time_now`
  1. `__CUR_TIME__`
  1. <span class="answer">`Time.now`</span>
  1. `Time`
  1. I don't know
<!-- 6 -->

1. Which of these will pause execution and allow you to debug?

  1. <span class="answer">`pry`</span>
  1. `exit`
  1. `break`
  1. `step`
  1. I don't know

1. What does MINASWAN mean?

  1. <span class="answer">Matz is nice and so we are nice</span>
  1. Models In a system with alternating nodes
  1. Modeled inheritances (Advanced software abstraction naming)
  1. More is not always so well afterthought now
  1. I don't know
<!-- 1 -->
