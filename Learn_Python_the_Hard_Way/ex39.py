# create a mapping of state to abreviation
states = {
    'Oregon': 'OR',
    'Florida': 'FL',
    'California': 'CA',
    'New York': 'NY',
    'Michigan': 'MI',
}

# create a basic set of states and some cities in them
cities = {
    'CA': 'San Francisco',
    'MI': 'Detroit',
    'FL': 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

states['Maryland'] = 'MD'
states['Virgina'] = 'VA'
states['Pennsylvania'] = 'PA'

cities['MD'] = 'Baltimore'
cities['VA'] = 'Richmond'
cities['PA'] = 'Gettysburg'

# print out some cities
print '-' * 10
print "NY State has: ", cities['NY']
print "OR State has: ", cities['OR']

# print some states
print '-' * 10
print "Michigan's abreviation is: ", states['Michigan']
print "Florida's abreviation is: ", states['Florida']

# print every state abreviation
print '-' * 10
# mydict.items() is a built-in method of dictionaries. 
# It returns a copy of the dictionary's key:value pairs.
for state, abbrev in states.items():
    print "%s is abbreviated %s" % (state, abbrev)

# print every city in state
print '-' * 10
for abbrev, city in cities.items():
    print "%s has the city %s" % (abbrev, city)

# now do both at the same time
print '-' * 10
for state, abbrev in states.items():
    print "%s state is abbreviated %s and has city %s" % (
        state, abbrev, cities[abbrev])

print '-' * 10
# safely get an abbreviation by state that might not be there
state = states.get('Texas', None)

if not state:
    print "Sorry, no Texas."

# get a city with a default value
city = cities.get('TX', 'Does Not Exist')
print "The city for the state 'TX' is: %s" % city

print "The number of states is %d" % len(states)

# Order is non-random, but varies across python implementations
# and the order in which the items were added to the dictionary.


