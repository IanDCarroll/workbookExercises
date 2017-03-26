## Animal is-a object look at the extra credit
class Animal
end

## Dog is-an Animal
class Dog < Animal

  def initialize(name)
    ## A dog has-a name
    @name = name
  end
end

## Cat is-an Animal
class Cat < Animal

  def initialize(name)
    ## a Cat has-a name
    @name = name
  end
end

## Person is-an Object (Not an Animal (In this implementation))
class Person

  def initialize(name)
    ## A Person has-a name
    @name = name

    ## Person has-a pet of some kind too
    @pet = nil
  end

  # allows pet to be read and written to
  attr_accessor :pet
end

## An Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## Allows Employee to use its parent's constructor
    super(name)
    ## An Employee is a special kind of Person that has-a salary
    @salary = salary
  end

end

## A Fish is-an Object
class Fish
end

## A Salmon is-a Fish
class Salmon < Fish
end

## A Halibut is-a Fish
class Halibut < Fish
end

## rover is-a dog instance
rover = Dog.new("Rover")

## satan is-a Cat instance
satan = Cat.new("Satan")

## Mary is-a person insance
mary = Person.new("Mary")

## Mary has-a pet atrtribute, which is set to satan here
mary.pet = satan

## Frank is-an Employee instance
frank = Employee.new("Frank", 120000)

## Frank has-a pet attribute, which is set to rover here
frank.pet = rover

## Flipper is a Fish instance 
#  (Not a dolphin instance, which is-a Mammal, not a Fish)
flipper = Fish.new()

## Crouse is a Salmon instance
crouse = Salmon.new()

## Harry is a Halibut instance
harry = Halibut.new()
