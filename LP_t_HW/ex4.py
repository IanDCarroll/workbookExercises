cars = 100
#Here's the culprit. the float is in space_in_a_car! That's unnecessary.
#correcting 4.0 to 4
space_in_a_car = 4
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
#carpool_capacity throws a float rather than an int.
#it was getting its float from space_in_a_car. 
#It now will give a more meaningful number.
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

print "There are", cars, "cars available."
print "There are only", drivers, "drivers available."
print "There will be", cars_not_driven, "empty cars today."
print "We can transport", carpool_capacity, "people today."
print "We have", passengers, "to carpool today."
print "We need to put about", average_passengers_per_car, "in each car."
