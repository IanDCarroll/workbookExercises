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
        The Gothons of Planet Percal #25 have invaded your ship and destroyed
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
            print """
        Quick on the draw you yank out your blaster and fire it at the Gothon.
        His clown costume is flowing and moving around his body, which throws
        off your aim. Your laser hits his costume but misses him entirely. This
        completely ruins his brand new costume his mother bought him, which
        makes him fly into a rage and blast you repeadedly in the face until
        you are dead.  Then he eats you.
            """
            return 'death'
        elif action == "dodge!":
            print """
        Like a world class boxer you dodge, weave, slip and slide right
        as the Gothon's blaster cranks a laser past your head.
        In the middle of your artful dodge your foot slips and you
        bang your head on the metal wall and pass out.
        You wake up shortly after only to die as the Gothon stomps on
        your head and eats you.
            """
            return 'death'
        elif action == "tell a joke":
            print """
        Lucky for you they made you learn Gothon insults in the academy.
        You tell the one Gothon joke you know:
            "Lbhe zbgure vf fb sng,
             jura fur fvgf nebhaq gur ubhfr,
             fur fvgf nebbhaq gur ubhfr."
       The gothon stops, tries not to laugh, then bursts out laughing and can't
       move. While he's laughing you run up and shoot him square in the head
       putting him down, then jump through the Weapon Armory door.
            """
            return 'laser_weapon_armory'
        else:
            print "DOES NOT COMPUTE!"
            return 'central_corridor'

class LaserWeaponArmory(Scene):

    def enter(self):
        print """
        You do a dive roll into the Weapon Armory, crouch and scan the room
        for more Gothons that might be hiding.  it's dead quiet, too quiet.
        You stand up and run to the far side of the room and find "Jenny",
        the ship's neutron bomb in its container. There's a keypad lock on the 
        box and you need the code to get the bomb out.  If you get the code 
        wrong 10 times then the lock closes forever and you can't get the bomb. 
        The key pad says "Enter the 3 digit code."
        """

        code = "%d%d%d" % (randint(1,9),randint(1,9),randint(1,9)) 
        guess = raw_input("[Keypad]> ")
        guesses = 0
       
        guesses += 1 
        while guess != code and guess != '8675309' and guesses < 10:
            print "BZZZZEDDD!"
            guesses += 1
            guess = raw_input("[Keypad]> ")

        if guess == code:
            print """
        The container clicks open and the seal breaks, letting gas out.
        You grab the neutron bomb and run as fast as you can to the
        bridge where you must place it in the right spot.
            """
            return 'the_bridge'
        elif guess == '8675309':
            print """
        You got her number on the wall! The keypad was a liar, simply to fool
        those who just don't understand late 20th century classical music. Thank
        goodness you are so cultured as to know. You take Jenny up to the bridge
        for a good time...
            """
            return 'the_bridge'
        else:
            print """
        The lock buzzes one last time and then you hear a sickening melting
        sound as the mechnaism is fused together.
        you decide to sit there, and finally the Gothons blow up the ship
        from their ship and you die.
            """
            return 'death'

class TheBridge(Scene):

    def enter(self):
        print """
        You burst onto the Bridge with "Jenny" under your arm and surprise
        5 Gothons who are trying to take control of the ship. each of them has
        an even uglier clown costume than the last. They haven't pulled their
        weapons out yet, as they see the active neutron destruct bomb under
        your arm and don't want to set it off. 
        Jenny's mean when you set her off!
        """
       
        action = raw_input("> ")

        if action == "throw Jenny":
            print """
        In a panic you throw Jenny at the group of Gothons and make a leap
        for the door. Right as you drop it a Gothon shoots you right in the
        back killing you. As you die you see another Gothon frantically
        trying to disarm Jenny. But Jenny doesn't like it when you try to
        disarm her like that. You die knowing they will probably blow up
        when Jenny goes off.
            """
            return 'death'
        elif action == "gently place Jenny":
            print """
        You point your blaster at Jenny and the Gothons put their hands up
        and start to sweat. You inch backward to the door, open it, and
        then carefully place Jenny on the floor. 
            "Sorry to leave you like this, baby", you say,
            "but it looks like these fine life-forms are looking for a good 
        time, too. Maybe you can entertain them a while -"
        You keep your blaster pointed at the bomb as you jump back through
        the door, punch the close button and blast the lock so the Gothons
        can't get out.
        Now that the bomb is in place you run to the escape pod to get off
        this tin can.
            """
            return 'escape_pod'
        else:
            print "DOES NOT COMPUTE!"
            return 'the_bridge'
       

class EscapePod(Scene):

    def enter(self):
        print "The Escape Pod"
       
        action = raw_input("> ")

        if action == "":
            print "die!"
            return 'death'
        elif action == ".":
            print "die!"
            return 'death'
        elif action == "!":
            print "safe!"
            exit(0)
        else:
            print "DOES NOT COMPUTE!"
            return 'escape_pod'


class Map(object):

    scenes = {
        'central_corridor' : CentralCorridor(),
        'death' : Death(),
        'laser_weapon_armory' : LaserWeaponArmory(),
        'the_bridge' : TheBridge(),
        'escape_pod' : EscapePod()
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
