class Scene
  def enter
    puts "I didn't write anything for the scene yet or set it where to go so this is the end."
    exit(1)
  end
end

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

class SpecificScene < Scene
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

class Exit < Scene
  def enter
    exit(0)
  end
end

class Map
  @@scenes = {
    'begin' => SpecificScene.new,
    'dead' => Loss.new
    'finished' => Win.new
    'exit' => Exit.new
  }
