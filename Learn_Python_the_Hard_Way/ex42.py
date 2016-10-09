## animal is-a object (yes, sort of confusing) look at the extra credit
class Animal(object):

    def __init__(self):
        self.isAlive = True

## Dog is an Animal
class Dog(Animal):

    def __init__(self, name):
        ## Dog has-a name
        self.name = name

## Cat is an animal
class Cat(Animal):

    def __init__(self, name):
        ## Cat has-a name
        self.name = name

## Person is an object
class Person(object):

    def __init__(self, name):
        ## Person has-a name
        self.name = name

        ## Person has-a pet of some kind
        self.pet = None

## Employee is-a Person
class Employee(Person):

    def __init__(self, name, salary):
        ## In a class hierarchy with single inheritance, super can be used
        # to refer to parent classes without naming them explicitly, 
        # thus making the code more maintainable. This use closely parallels 
        # the use of super in other programming languages.
        # https://docs.python.org/2/library/functions.html#super
        super(Employee, self).__init__(name)
        ## Employee has-a salary
        self.salary = salary

## Fish is an object
class Fish(Animal):

    def __init__(self):
        super(Fish, self).__init__()
        self.swim = "It swims deftly through the water."

## Salmon is-a fish
class Salmon(Fish):
    
     def __init__(self):
         super(Salmon, self).__init__()
         self.isCanned = True
         self.isAlive = False

## Halibut is-a fish
class Halibut(Fish):

    def __init__(self):
        super(Halibut, self).__init__()
        self.beingEaten = True
        self.isAlive = "Not quite dead yet..."


## rover is-a Dog
rover = Dog("Rover")

## satan is-a Cat
satan = Cat("Satan")

## mary is-a Person
mary = Person("Mary")

## mary has-a pet that is-a Cat named satan
mary.pet = satan

## frank is an Employee
frank = Employee("Frank", 120000)

## frank has a pet that is-a Dog named rover
frank.pet = rover

## flipper is-a Fish (this flipper is not a dolphin. Dolphins are not fish.)
flipper = Fish()

## crouse is-a Salmon
crouse = Salmon()

## harry is-a Halibut
harry = Halibut()

print "Harry is Alive? ", harry.isAlive

print "Flipper swims? ", flipper.swim

print "Crouse is canned? ", crouse.isCanned
print "Crouse is Alive? ", crouse.isAlive

print "Harry is being eaten? ", harry.beingEaten
print "Harry is Alive? ", harry.isAlive
