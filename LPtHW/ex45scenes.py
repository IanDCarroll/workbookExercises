from sys import exit
from random import randint

class AllElse(object):

    distractions = ['a hummingbird']
    phrase = distractions[randint(0, len(distractions)-1)]
    distraction = "You are disctracted by %s." % phrase

class Exit(object):

    ways = ['You leave.']

    def enter(self):
        print Exit.ways[randint(0, len(self.ways)-1)]
        exit(0)

class Entrance(object):

    def enter(self):
        print "You enter."

        action = raw_input("> ")

        if action == "1":
            print "1"
            return 'exit'
        elif action == "2":
            print "2"
            return 'exit'
        else:
            print AllElse.distraction
            return 'entrance'
