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
"""
)

laser_weapon_armory = Room("Laser Weapon Armory", 
"""
You are in the Laser Weapon Armory.
"""
)

the_bridge = Room("The Bridge",
"""
you are on the bridge.
"""
)

escape_pod = Room("Escape Pod",
"""
You are in a room full of escape pods.
"""
)

the_end_winner = ("The End",
"""
You win.
"""
)

the_end_loser = ("The End", 
"""
You do not win.
"""
)

escape_pod.add_paths({
    '2': the_end_winner,
    '*': the_end_loser
})

generic_death = Room("death", "You died.")

the_bridge.add_paths({
    'throw the bomb': generic_death,
    'gently place the bomb': escape_pod
})

laser_weapon_armory.add_paths({
    '8675309': the_bridge,
    '*': generic_death
})

central_corridor.add_paths({
    'shoot!': generic_death,
    'dodge!': generic_death,
    'tell a joke': laser_weapon_armory
})

START = central_corridor
