# 1. Make a different game than the others.
# 2. Use more than one file. Use imports to make it happen.
# 3. Use one class per room and give the rooms names that fit the description.
# 4. The engine needs to know the rooms and how to navigate them.

# The Garden of Flowing Fragrance: A Relaxing Chinese Garden Experience.

from sys import exit
from random import randint

class Scene(object):

    distractions = ['a hummingbird']
    phrase = distractions[randint(0, len(distractions)-1)]
    distraction = "You are disctracted by %s." % phrase

#    def __init__(self):
#        self.distractions = distractions
#        self.phrase = phrase
#        self.distraction = distraction

    def enter(self):
        print "This scene is not yet configured."
        return 'exit'

class Engine(object):

    def __init__(self, scene_map):
        self.scene_map = scene_map

    def play(self):
        current_scene = self.scene_map.opening_scene()

        while True:
            print "\n--------"
            next_scene_name = current_scene.enter()
            current_scene = self.scene_map.next_scene(next_scene_name)

class Exit(Scene):

    ways = ['You leave.']

    def enter(self):
        print Exit.ways[randint(0, len(self.ways)-1)]
        exit(0)

class Entrance(Scene):

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
            print self.distraction
            return 'entrance'

class Map(object):

    scenes = {
        'entrance' : Entrance(),
        'exit' : Exit()
    }

    def __init__(self, start_scene):
        self.start_scene = start_scene

    def next_scene(self, scene_name):
        return Map.scenes.get(scene_name)

    def opening_scene(self):
        return self.next_scene(self.start_scene)

a_map = Map('entrance')
a_game = Engine(a_map)
a_game.play()
