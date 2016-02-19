def cheese_and_crackers(cheese_count, boxes_of_crackers)
    puts "You have #{cheese_count} cheeses."
    puts "You have #{boxes_of_crackers} boxes of crackers."
    puts "That is an adequate number of items for a festive engagement."
    puts "You are required to procure a blanket."
end

puts "We can just give the function umbers directly:"
cheese_and_crackers(20, 30)

puts "Or, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
