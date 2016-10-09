#Different rooms 4
#Library : multiple books. 1 has combination.
#Bedroom : Locked and should find the key to free your friend.
#Living room : safe inside that requires 4 digits.
#    success gives you the bedroom key.
#Dining room : ghost in there, asks you a riddle. Success gives the key.
#Front door : Only opens if dining room key is with you.

from sys import exit

door_key = False
friend_key = False
free_friend = False

def house():
    print  """
You are in a skeevy foyer
There are five doors that are conveiently labeled.
(There are FOUR LIGHTS!)

\t 1 - Library (Madness awaits!)
\t 2 - Bedroom (It's a creepy rancher!)
\t 3 - Living Room (Living?! Not for long...)
\t 4 - Dining Room (Where they serve man!)
\t 5 - Go on! Get out of heah! What are you doing!!!\n
"""

    while True:
        try:
            go_to = int(raw_input("Type the number where you go > "))
        except ValueError:
            print "I don't know what that means!"
            house()

        if go_to == 1:
            library()
        elif go_to == 2:
            bed_room()
        elif go_to == 3:
            living_room()
        elif go_to == 4:
            dining_room()
        elif go_to == 5:
            front_door()
        else:
            print "I don't know what that means!"

def library():
    print """
There are some weird-ass book up in here!

\t 1 - Cooking Confections with Cthulhu
\t 2 - The Power of Never-Is
\t 3 - Quantum Physics for People Locked in Houses
\t 4 - 50 Shades of Grey
\t 5 - The books are invading your mind! No! Get out of here!\n
"""

    while True:
        try:
            read = int(raw_input("Type the number of the book you read > "))
        except ValueError:
            print "You reach for that book, but discover it doesn't exist."
            library()

        if read == 1:
            print "You learn some great recipes for serving human flesh."
        elif read == 2:
            print "This book has only blank pages."
        elif read == 3:
            print "Through the uncertainty a number comes to mind: 1701."
        elif read == 4:
            die("You take 12d8 points of psychic damage.")
        elif read == 5:
            house()
        else:
            print "You reach for that book, but discover it doesn't exist."

def bed_room():
    print """
This is a bad room.

\t 1 - Check out the mirror on the ceiling.
\t 2 - Check out the box under the four-poster bed.
\t 3 - Check out the velvet Barry Manilow on the wall.
\t 4 - Check out the iron maiden shaped wardrobe in the corner.
\t 5 - This room hurts my sense of interior design! No! Get out of here!\n
"""

    while True:
        try:
            check_out = int(raw_input("Type the number of what you check out > "))
        except ValueError:
            print "You go to check that thing out, but it doesn't exist."
            bed_room()

        if check_out == 1:
            print "Your doppleganger stares back at you. It's creepy."
        elif check_out == 2:
            print "There are evil dust bunnies under here. It's creepy."
        elif check_out == 3:
            die("You take 12d8 points of psychic damage.")
        elif check_out == 4:
            wardrobe()
        elif check_out == 5:
            house()
        else:
            print "You go to check that thing out, but it doesn't exist."      

def living_room():
    print """
There is nothing living in this room. This room is a liar!

\t 1 - Check out the Arm Chair.
\t 2 - Check out the Love Seat.
\t 3 - Check out the Safe.
\t 4 - Check out the coffee table.
\t 5 - This room is a liar! No! Get out of here!\n
"""

    while True:
        try:
            check_out = int(raw_input("Type the number of what you check out > "))
        except ValueError:
            print "You go to check that thing out, but it doesn't exist."
            living_room()

        if check_out == 1:
            print "There's skeleton in the chair! It has two heads!"
        elif check_out == 2:
            print "There's a whole bunch of dead mice on here."
        elif check_out == 3:
            safe()
        elif check_out == 4:
            print "Even the coffee is dead. It's starbucks!"
        elif check_out == 5:
            house()
        else:
            print "You go to check that thing out, but it doesn't exist."

def dining_room():
    global door_key

    print """
The room has one long table with two chairs at either end.
At your end the chair is empty.
At the other end is A GHOST!!!!!

\t\"I have a question. And I want it answered immediately!
\t What is your favorite color?\n

\t1 - Blue
\t2 - No, Yellow!
\t3 - Puce
\t4 - Mozart's Violin Concerto No.3 in G Major
\t5 - Run Away!
"""
    try:
        choice = int(raw_input("Type the number of your favorite color > "))
    except ValueError:
        die("\"Oh, I hate mumblers!\" The ghost devours your soul.")

    if choice == 1:
        print "\"Oh, good. that's my favorite too. Have a house key.\""
        door_key = True
        house()
    elif choice == 2:
        die("\"No, I don't like Yellow\" The Ghost devours your soul.")
    elif choice == 3:
        die("\" Puce?! Puce?!\" The Ghost devours your soul.")
    elif choice == 4:
        die("\"Mozart always makes me hungry!\" The ghost devours your soul.")
    elif choice == 5:
        die("You turn to run, but the ghost is there too! It eats your soul.")
    else:
        die("\"Oh, I hate mumblers!\" The ghost devours your soul.")

def safe():
    print """
You sweep a few dead mice off the safe. It has a combination lock.

\t1 - Try the combination
\t2 - No way man, there are dead mice on top of that thing.
"""

    while True:
        try:
            choice = int(raw_input("Type the number of your choice > "))
        except ValueError:
            print "You go to do that thing, but can't!"
            safe()

        if choice == 1:
            combination()
        elif choice == 2:
            living_room()
        else:
            print "You go to do that thing, but can't!"

def combination():
    global friend_key

    try:
        code = int(raw_input("Enter in the code for the safe > "))
    except ValueError:
        die("The safe eats your life force. You become another decoration.")

    if code == 1701:
        print "The safe opens. You take a key from inside it."
        friend_key = True
        living_room()
    else:
        die("The safe eats your life force. You become another decoration.")

def wardrobe():
    global friend_key
    global free_friend

    print """There's some noise coming from this creepy wardrobe.

\t1 - Try to open the wardrobe.
\t2 - No way man! This thing is creepy.
"""

    while True:
        try:
            choice = int(raw_input("Type the number of your choice > "))
        except ValueError:
            print "You go to do that thing, but suddenly cant!"
            wardrobe()

        if choice == 1 and friend_key == False:
            print "It won't open. It looks like it needs a key."
        elif choice == 1 and free_friend == True:
            die("A doppleganger comes out and murders you.")
        elif choice == 1 and friend_key == True:
            print "You use the key from the safe and let your friend out."
            free_friend = True
            bed_room()
        elif choice == 2:
            bed_room()
        else:
            print "You go to do that thing, but suddenly can't!"

def dilema():
    print """
The door is open, but what about your friend?

\t1 - Forget about him/her! That house is creepy!
\t2 - That jerk owes me five dollars! I better go back and get him/her.
"""

    while True:
        try:
            decision = int(raw_input("Type the number for what you do > "))
        except ValueError:
            print "No, seriously. 1 or 2."
            dilema()

        if decision == 1:
            die("The ghost of your friend haunts you forever!")
        elif decision == 2:
            house()
        else:
            print "No, seriously. 1 or 2."

def die(why):
    print why + " You are dead!"
    exit()

def front_door():
    global door_key
    global free_friend

    if door_key == False:
	print "You go for the door, but it's locked!"
        house()
    elif door_key == True and free_friend == False:
        dilema()
    elif door_key == True and free_friend == True:	
       print "You and your friend are free of the creepy house!"
       print "You are not dead! You win!"
       exit()

def main():
    print """
The Creepy House!!!

You are trapped in a creepy house! Oh noes!
But your friend is even more trapped! You don't know where he/she is!!!


"""
    house()

if __name__ == '__main__':
   main() 
