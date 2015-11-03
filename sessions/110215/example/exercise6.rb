splinter = {name: 'Splinter', title: 'Trainer', age: 38, present: true}
mike = {name: 'Michaelangelo', title: 'Developer', age: 14, present: true}
raph = {name: 'Raphael', title: 'Lead', age: 14, present: false}
don = {name: 'Donatello', title: 'Developer', age: 14, present: false}
leo = {name: 'Leonardo', title: 'Developer', age: 14, present: false}

roster = [splinter, raph, don, leo, mike]

roster.each do |student|
  if student[:present]
    puts "#{student[:name]}, a #{student[:title]}, is #{student[:age]} years old"
  else
    puts "OH NO! #{student[:name]} is absent!"
  end
end
