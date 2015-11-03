splinter = {name: 'Splinter', title: 'Trainer', age: 38, present: true, excuse: ''}
mike = {name: 'Michaelangelo', title: 'Developer', age: 14, present: true, excuse: ''}
raph = {name: 'Raphael', title: 'Lead', age: 14, present: false, excuse: 'Getting pizza'}
don = {name: 'Donatello', title: 'Developer', age: 14, present: false, excuse: 'Fighting crime'}
leo = {name: 'Leonardo', title: 'Developer', age: 14, present: false, excuse: ''}

roster = [splinter, raph, don, leo, mike]

def present?(student)
  student[:present] or student[:excuse] != ''
end

def output(student)
  <<-OUTPUT
-------
Name: #{student[:name]}\n
Age: #{student[:age]}\n
Title: #{student[:title]}
----
  OUTPUT
end

roster.each do |student|
  if present?(student)
    puts output(student)
  else
    puts "OH NO! #{student[:name]} is absent!"
  end
end
