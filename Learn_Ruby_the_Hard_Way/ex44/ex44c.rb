class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered() CALLED TWICE"
  end
end

dad = Parent.new()
son = Child.new()

dad.altered()
puts "-" * 10
son.altered()
