ten_things = "Apples Oranges Peacock Peach People Parties"

puts "Wait, Zed screwed up and only listed six things. Let's fix his error."

stuff = ten_things.split(' ')
more_stuff = ["Pouch", "Porcupine", "Pillow", "Patio", "Pants", "Purse", "Pool"]

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")
