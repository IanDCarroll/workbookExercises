# 1. Make a different game than the others.
# 2. Use more than one file. Use imports to make it happen.
# 3. Use one class per room and give the rooms names that fit the description.
# 4. The engine needs to know the rooms and how to navigate them.

# The Garden of Flowing Fragrance: A Relaxing Chinese Garden Experience.

import ex45scenes as s 


class Engine(object):

    def __init__(self, scene_map):
        self.scene_map = scene_map

    def play(self):
        current_scene = self.scene_map.opening_scene()

        while True:
            print "\n--------"
            next_scene_name = current_scene.enter()
            current_scene = self.scene_map.next_scene(next_scene_name)


class Map(object):

    # check ex45scenes.py and make sure all scenes are included here too.
    scenes = {
        'entrance' : s.Entrance(),
        'exit' : s.Exit()
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
