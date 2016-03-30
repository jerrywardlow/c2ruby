# is-a
class Animal
end

# has-a
class Dog < Animal
  def initialize(name)
    # has-a
    @name = name
  end
  def bark()
    puts "Arf! My name is " + @name + "! You're hallucinating!"
  end
end

# is-a
class Cat < Animal
  def initialize(name)
    # has-a
    @name = name
  end
end

# is-a
class Person
  def initialize(name)
    # has-a
    @name = name
    # has-a
    @pet = nil
  end

  attr_accessor :pet
end

# is-a
class Employee < Person
  def initialize(name, salary)
    # has-a
    super(name)
    # has-a
    @salary = salary
  end
end

# is-a
class Fish
end

# is-a
class Salmon < Fish
end

# is-a
class Halibut < Fish
end

# is-a
rover = Dog.new("Rover")

# is-a
stanley = Cat.new("Stanley")

# is-a
mary = Person.new("Mary")

# has-a
mary.pet = stanley

# is-a
frank = Employee.new("Frank", 120000)

# has-a
frank.pet = rover

# is-a
flipper = Fish.new()

# is-a
ted_cruz = Salmon.new()

# is-a
cinco = Halibut.new()

rover.bark()
