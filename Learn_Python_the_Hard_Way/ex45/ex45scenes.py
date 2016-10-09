from sys import exit
from random import randint
import ex45res as r



# The catch-all function for multiple scenes that returns all "else:" inputs
def distraction():
    phrase = r.distractions[randint(0, len(r.distractions)-1)]
    return  "You are disctracted by %s." % phrase



# The scenes:
# make sure to include any scene changes in the dictionary of the Map object
# in ex45.py otherwise it can't be accessed!

class Exit(object):

    def enter(self):
        print r.exit_ways[randint(0, len(r.exit_ways)-1)]
        exit(0)


class Entrance(object):

    def enter(self):
        print r.enter

        action = raw_input("> ")

        if action == "1":
            print "1"
            return 'exit'
        elif action == "2":
            print "2"
            return 'exit'
        else:
            print distraction()
            return 'entrance'
