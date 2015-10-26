# ToDo's with Priority

- Change todo list item Strings to be TodoListItem's
- TodoListItem's will respond to `priority` and `to_s`
- define an initalizer that takes item text and optionally priority

```
  class TodoListItem
    attr_accessor :item_text, :priority, :thing

    def initialize(args)
      @item_text = args[:priority]
    end

    def pretty_print
      puts "~*~*~*~ #{@item_text} ~*~*~*~*"
    end
  end

  list = [ TodoListItem.new('Do this', :low), TodoListItem.new('Do that') ]
  list.each do |item|
    item.pretty_print
  end
```

To make an optional parameter:

```
  def method_name(arg1, arg2 = nil)
    do_stuff
  end
```
Setting/Accessing attr's
```
def initialize(thing)
  @thing = thing
end

def hi
  puts @thing
end
```
