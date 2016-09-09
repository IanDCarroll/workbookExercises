from sys import exit

def gold_room():
    print "This room is full of gold.  How much do you take?"

    next = raw_input("> ")
    # if the string written has a 1 or a 0 in it, it passes. Otherwise, no.
    if "0" in next or "1" in next:
        # by using try except, "I take 1" responses are handled.
        try:
            how_much = int(next)
        except ValueError:
            dead("Man, learn to type a number.")
    else:
        dead("Man, learn to type a number.")

    if how_much < 50:
        print "Nice, you're not greedy, you win!"
        # exit(0) closes the python inerpreter. 
        # The 0 argument sends a signal to the system that it exited cleanly
        # and that there were no errors.
        # exit(1) is used for stderr, 
        # and 2 is used for command line syntax errors.
        # 0-127 are viable numbers, but are rarely used of interpreted by OS
        # You can also inlcude an message, that will be interpreted as exit(1)
        # exit("your error message here.")
        # exit() and exit(None) are the same as exit(0).
        exit()
    else:
        dead("You greedy bastard!")


def bear_room():
    print "There is a bear here."
    print "The bear has a bunch of honey."
    print "The fat bear is in front of another door."
    print "How are you going to move the bear?"
    bear_moved = False

    while True:
        next = raw_input("> ")

        if next == "take honey":
            dead("The bear looks at you then slaps your face off.")
        elif next == "flee":
            start()
        elif next == "taunt bear" and not bear_moved:
            print "The bear has moved from the door. You can go through it now."
            bear_moved = True
        elif next == "taunt bear" and bear_moved:
            dead("The bear gets pissed off and chews your leg off.")
        elif next == "open door" and bear_moved:
            gold_room()
        else:
            # I was thinking that I needed to explicitly call bear_room()
            # But it turns out I dont! And I get to keep bear_moved value.
            # It just returns to raw_input("> ").
            # It must have something to do with that while loop.
            # It continues to run so long as another function isn't called.
            # It may be technically continuing to run in the call stack.
            print "I got no idea what that means."


def cthulhu_room():
    print "Here you see the great evil Cthulhu."
    print "He, it, whatever stares at you and you go insane."
    print "Do you flee for your life or eat your head?"

    next = raw_input("> ")

    if "flee" in next:
        start()
    elif "head" in next:
        dead("Well that was tasty!")
    else:
        cthulhu_room()


def dead(why):
    print why, "Good job!"
    exit()

def start():
    print "You are in a dark room."
    print "There is a door to your right and left."
    print "Which one do you take?"

    next = raw_input("> ")

    if next == "left":
        bear_room()
    elif next == "right":
        cthulhu_room()
    else:
        dead("You stumble around the room until you starve.")


start()

# This arcitecture starts you at start(). 
# It uses if statements to pass you to room after room
# by calling the function of that room.

# I've allowed you to flee from the bear and return to start as an option. 
# Once in the gold room, you're there, though. No one flees from gold.
