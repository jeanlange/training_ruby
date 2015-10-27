# TODO App Errors

In your Todo app from earlier

- On any todo item that has "ignore" in the text, raise a
  `NoUnimportantTaskError`
- Prompt the user for a "yes" or "no" and ask if they would like to display the
  task
- If they select yes, remove "ignore" from the message and display the list
  with the item

This will be a refresher on Object-Oriented Programming in Ruby as well as
showing how to create custom Errors. Things to remember:

```ruby
class ClassName < StandardError
  attr_accessor :accessible_variable

  def initialize(args)
    @accessible_variable = args
  end
end
```

`raise NoUnimportantTaskError`

`rescue NoUnimportantTaskError => e`
