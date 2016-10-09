class Room(object):

    def __init__(self, name, description):
        self.name = name
        self.description = description
        self.paths = {}

    def go(self, direction):
        return self.paths.get(direction, None)

    def add_paths(self, paths):
        self.paths.update(paths)

central_corridor = Room("Central Corridor", 
"""
You are in the Central Corridor.
There is a Gothon.
"""
)

shoot_death = Room("death", "You shoot, but die.")
dodge_death = Room("death", "You dodge, but die.")

laser_weapon_armory = Room("Laser Weapon Armory", 
"""
You kill the gothon.
You are in the Laser Weapon Armory.
There is a neutron bomb named Jenny.
There is a code pad with 7 digits.
"""
)

wrong_number = Room("death", "You die. You do not have a good time.")

the_bridge = Room("The Bridge",
"""
You take Jenny to the bridge for a good time.
There are a bunch of Gothons there.
"""
)

make_jenny_mad = Room("death", 
"""
Jenny doesn't like it when you throw her. 
She explodes and you die.
""")

escape_pod = Room("Escape Pod",
"""
You leave Jenny with the Gothons to explode.
You are in a room full of escape pods.
Which do you take?
"""
)

the_end_winner = Room("The End",
"""
You win.
"""
)

the_end_loser = Room("The End", 
"""
You do not win.
"""
)

escape_pod.add_paths({
    '2': the_end_winner,
    '*': the_end_loser
})

the_bridge.add_paths({
    'throw the bomb': make_jenny_mad,
    'gently place the bomb': escape_pod
})

laser_weapon_armory.add_paths({
    '8675309': the_bridge,
    '*': wrong_number
})

central_corridor.add_paths({
    'shoot!': shoot_death,
    'dodge!': dodge_death,
    'tell a joke': laser_weapon_armory
})

START = central_corridor
