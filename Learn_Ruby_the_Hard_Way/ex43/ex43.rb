class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Death < Scene

  @@quips = [
    "You died. You kinda suck at this.",
    "Your mom would be proud...if she were smarter.",
    "Such a luser.",
    "I have a small puppy that's better at this."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length -1))]
    exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
    puts "The gothons of Planet Percal #25 have invaded your ship and destroyed"
    puts "your entire crew.  You are the last surviving member and your last"
    puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
    puts "put it in the bridge, and blow the ship up after getting into an "
    puts "escape pod."
    puts "\n"
    puts "You're running down the central corridor to the Weapons Armory when"
    puts "a Gothon jumps out, red scaly skin, dark green teeth, and evil clown costume"
    puts "flowing around his hate filled body.  He's blocking the door to the"
    puts "Armory and about to pull a weapon to blast you."

    action = $stdin.gets.chomp

    if action == "shoot!"
      puts ""
      return 'death'
    elsif action == "dodge!"
      puts ""
      return 'death'
    elsif action == "tell a joke"
      puts ""
      return 'finished'
    else
      puts ""
      return 'central_corridor'
    end
  end
end
