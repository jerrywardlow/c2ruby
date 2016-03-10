def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  how_much = Integer(gets) rescue false

  if !how_much
    dead("Man, learn how to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
  else
    dead("You greedy bastard!")
  end
end

def bear_room
  puts "There is a bear here."
  puts "His name is Zed Shaw."
  puts "Zed the bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("Zed gets pissed and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I have no idea what that means. What are you going to do?"
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil C-Thilly."
  puts "He, it, Zed, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your own head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("You enjoy the taste of your own head.")
  else
    cthulhu_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and to your left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start
