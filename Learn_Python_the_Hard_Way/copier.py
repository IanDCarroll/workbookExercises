from sys import argv

script, from_file, to_file = argv

print "Copying from %s to %s" % (from_file, to_file)

out_file = open(to_file, 'w').write(open(from_file).read())

print  "Alright, all done."

out_file.close()

#*********************************************************************

# some notes:
# this is a cleaned-up version of ex17.py.
# The os can already copy and paste, 
# but I'm still happy with this code's usefulness, 
# so I want to keep it around for now.
