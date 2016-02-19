def print_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_again(arg1, arg2)
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
    puts "arg1: #{arg1}"
end

def print_none()
    puts "There's nothing here..."
end

print_two("Weirdo", "Magnet")
print_two_again("Serious", "Weirdo")
print_one("Primero!")
print_none()
