# the class is the blueprint for how to buld the object
class Song(object):

    # A class must be initialized to be used, with any passing variables
    # self is a very important part of this.
    def __init__(self, lyrics):
        self.lyrics = lyrics

    # when creating a method, you need to pass self as the first argument 
    # otherwise it won't do.
    def border(self):
        print '-' * 13

    # when calling a method from antoher method, 
    # or calling a passed variable from init,
    # you need to append self. to the front of the function or variable called
    # if it wasn't created within the scope of the method.
    # this is like useing the global keyword to drag in a global variable
    # into the scope of a function.
    def sing_me_a_song(self):
        self.border()
        for line in self.lyrics:
            print line
        self.border()
        print ''

# these calls are specific orders to build objects with name x and args y.
happy_bday = Song(["Happy birthday to you",
                   "I don't want to get sued",
                   "So I'll stop right there"])

bulls_on_parade = Song(["They rally around the family",
                        "With pockets full of shells"])

lucy_in_the_sky = Song(["Picture yourself on a boat on a river",
                        "With tangerine trees and marmalade skies",
                        "somebody calls and you answer quite slowly",
                        "The girl with coleidescope eyes."])

the_words = ["Everything you know is wrong",
             "Black is white up is down and short is long",
             "And everything you thought was just so important doesn't matter",
             "Cause everything you know is wrong",
             "Just forget the words and sing along",
             "All you need to understand is everything you know is wrong"]

#Abstracting the lyrics in this way makes for a prettier call.
everything = Song(the_words)

# You can apparently pass functions into a list!
your_lyrics = [ raw_input("First line > "), 
                raw_input("Secnd line > "), 
                raw_input("Third line > "),
                raw_input("Final Line > ") ]

whatevs = Song(your_lyrics)


# These calls call a method of the initialised objects to perform a task.
happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

lucy_in_the_sky.sing_me_a_song()

everything.sing_me_a_song()

whatevs.sing_me_a_song()
