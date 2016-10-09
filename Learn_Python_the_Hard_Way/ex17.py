from sys import argv
from os.path import exists

script, from_file, to_file = argv

print "Copying from %s to %s" % (from_file, to_file)

# we could do these two on one line too, how?

# in_file = open(from_file)
# indata = in_file.read()

# how: in_file is only used one other place. 
# We can simplify this be combining the two variable steps 
# into a single one and simply removing the last call to in_file.
indata = open(from_file).read()

# Commenting out unneccessary asking.
# print "The input file is %d bytes long" % len(indata)

# print "Does the output file exist? %r" % exists(to_file)
# print "Ready, hit RETURN to continue, CTRL-C to abort."
# raw_input()

out_file = open(to_file, 'w')
out_file.write(indata)

print  "Alright, all done."

out_file.close()

# in_file does have another call, but if I just comment out the whole 
# command the script runs. I worry that indata never closes the file,
# but there are no error messages. So I suppose it's all right.
# actually, It is alright. Python automacially closes it for me.

#in_file.close()

#*********************************************************************

# some notes:
# 1. Importing code allows us to call functions we'd otherwise have 
# to write ourselves. 
# That can be useful in combining small-batch modular files that are easier
# to maintain and manage than one long enormous script.
# It also means we can swap out parts to change or upgrade functionality.
# Whenever possible write smaller scripts and put them together 
# in a meaningful way with the use of import.

# argv allows us to pass intial data into our scripts.
# I wonder if we can use them the same way we use parameters 
# inside a function's parentheses?
# raw_input is also extremely useful in allowing us to add more input 
# at key points of the script's execution.

# I'm going to have to remember .open() .read() .write() and .close() 
# and get as familiar as I can with them.
