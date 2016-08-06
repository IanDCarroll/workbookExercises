from sys import argv

script, input_file = argv

# by printing out my_file.read,
# we see exactly what read does in the background.
# Ouputs the file.
def print_all(f):
    print f.read()

# my_file.seek(0) sets the reader position 0 in the file.
def rewind(f):
    f.seek(0)

# my_file.readline() reads one line of the file. The first is 1, not 0.
def print_a_line(line_count, f):
    print line_count, f.readline()

# before anything can be done, the -script- needs to open the file.
current_file = open(input_file)

print "First let's print the whole file:\n"

print_all(current_file)

print "Now let's rewind, kind of like a tape."

rewind(current_file)

print "Let's print three lines:"

# We could dry out this code by creating a while loop 
# if it got to many more than three lines, 
# or if we wanted a variable to change how many lines printed out each time.
current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

# *************************************************

# .read() and .readline() make sense.
# How is .readline() being passed which line to read?
#    It isn't being passed anything!
#    each time it's called, it reads the next line in the file!
#    If you pass it a number, it reads that many characters each time.
#    It does not accept more than one variable.
#       How would you read a specific line?
# What does the number in .seek() represent? 
#    The character's position in the text.
