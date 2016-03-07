people = 20
cats = 30
dogs = 15


if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "The number of cats is okay! The world is saved!"
end

if people < dogs
  puts "The world is drowning in the drool of #{dogs} dogs."
end

if people > dogs
  puts "#{people} people are safe from the terror of drool."
end

dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end

if people == dogs
  puts "People are dogs...?"
end
