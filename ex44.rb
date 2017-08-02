class Parent
  def override()
    puts "Parent override()"
  end

  def implicit()
    puts "Parent implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def override()
    puts "Child override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()
