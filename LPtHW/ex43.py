from sys import exit
from random import randint


class Scene(object):

    def enter(self):
        print "This scene is not yet configured. Subclass it and implement enter()"
        exit(1)


class Engine(object): # I don't understand this yet. How does this work?
    #         How it works:
    # The scene_map is a Map object passed to the engine.
    # The "play" method calls the Map object's opening_scene method.
    # the Map's opening_scene method calls its next_scene method 
    #     with start_scene as a parameter.
    # next_scene checks that parameter against a dictionary and calls the scene
    # then "play" runs an infinite while loop that breaks when exit() is called in the scene.
    # Otherwise it runs the enter() method of the scene returned by the map object.
    # and then changes the scene to the next one called by the enter() method of the scene 
    #     to continue play.

    def __init__(self, scene_map):
        self.scene_map = scene_map

    def play(self):
        current_scene = self.scene_map.opening_scene()

        while True:
            print "\n--------"
            next_scene_name = current_scene.enter()
            current_scene = self.scene_map.next_scene(next_scene_name)

class Death(Scene):

    quips = [
        "You died. You kinda suck at this.",
        "Your mom would be proud... if she were smarter.",
        "Such a luser.",
        "I have a small puppy that's better at this."
    ]

    def enter(self):
        print Death.quips[randint(0, len(self.quips)-1)]
        exit(1)

class CentralCorridor(Scene):

    def enter(self):
        print """
        The gothons of Planet Percal #25 have invaded your ship and destroyed
        your entire crew.  You are the last surviving member and your last
        mission is to get the neutron destruct bomb from the weapons Armory,
        put it in the bridge, and blow the ship up after getting into an
        escape pod.

        You're running down the central corridor to the Weapons Armory when
        a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown 
        costume flowing around his hate filled body. He' blocking the door to
        the Armory and about to pull a weapon to blast you.
        """

        action = raw_input("> ")

        if action == "shoot!":
            print "die!"
            return 'death'
        elif action == "dodge!":
            print "die!"
            return 'death'
        elif action == "tell a joke":
            print "funny."
            return 'laser_weapon_armory'
        else:
            print "DOES NOT COMPUTE!"
            return 'central_corridor'

class LaserWeaponArmory(Scene):

    def enter(self):
        return 'death'

class TheBridge(Scene):

    def enter(self):
        pass

class EscapePod(Scene):

    def enter(self):
        pass


class Map(object):

    scenes = {
        'central_corridor' : CentralCorridor(),
        'death' : Death(),
        'laser_weapon_armory' : LaserWeaponArmory()
    }

    def __init__(self, start_scene):
        self.start_scene = start_scene

    def next_scene(self, scene_name):
        return Map.scenes.get(scene_name)

    def opening_scene(self):
        return self.next_scene(self.start_scene)


a_map = Map('central_corridor')
a_game = Engine(a_map)
a_game.play()   
