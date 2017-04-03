class Hammer

  def override
    puts "OTHER override()"
  end

  def implicit
    puts "OTHER implicit()"
  end

  def altered
    puts "OTHER altered()"
  end
end

class Child

  def initialize
    @hammer = Hammer.new
  end

  def implicit
    @hammer.implicit
  end

  def override
    puts "CHILD override()"
  end

  def altered
    puts "CHILD, BEFORE OTHER altered()"
    @hammer.altered
    puts "CHILD, AFTER OTHER altered()"
  end
end

maxwell = Child.new

maxwell.implicit
maxwell.override
maxwell.altered
