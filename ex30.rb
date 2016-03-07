people = 30
cars = 40
trucks = 15


if cars > people
  puts "We should take the cars? This is confusing."
elsif cars < people
  puts "We should not take the cars? Jeez..."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks. What are we doing with these trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide. Not surprising."
end

if people > trucks
  puts "CAN WE JUST TAKE THE TRUCKS?"
else
  puts "NO, WE ARE JUST GOING TO STAY HOME."
end
