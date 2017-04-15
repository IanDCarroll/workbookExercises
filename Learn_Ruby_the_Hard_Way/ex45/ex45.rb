require './scene_class.rb'

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()

    while true
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

class Begin < Scene
  def enter
    puts "You wake up and die immediately."
    return 'loss'
  end
end

class Metro < Scene
end

class Aikido < Scene
end

class EighthLight < Scene
end

class DandD < Scene
end

class Sleep < Scene
end

class Loss < Scene
  def enter
    puts "You have lost."
    exit(0)
  end
end

class Win < Scene
  def enter
    puts "You have won!"
    exit(0)
  end
end

class Map
  @@scenes = {
    'begin' => Begin.new,
    'loss' => Loss.new,
    'win' => Win.new
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    return @@scenes[scene_name]
  end

  def opening_scene
    return next_scene(@start_scene)
  end
end

the_map = Map.new('begin')
the_game = Engine.new(the_map)
the_game.play
