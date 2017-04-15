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
    puts "You wake up and have to figure out what to wear."
    print_choices("pants", "kilt")
    
    choice = get_player_choice

    if choice == '1'
      puts "You put on some pants and head out."
      puts ""
      return 'metro'
    elsif choice == '2'
      puts "You head out with your kilt on."
      puts "It's windy today."
      return 'loss'
    else
      error
      return 'begin'
    end
  end
end

class Metro < Scene
  def enter 
    puts "You are riding on the metro."
    print_choices("Remain standing","Take a seat")

    choice = get_player_choice

    if choice == '1'
      puts "You are still awake when your stop comes up."
      puts ""
      return 'aikido'
    elsif choice == '2'
      puts "You wake up in Long Beach."
      return 'loss'
    else
      error
      return 'metro'
    end
  end
end

class Aikido < Scene
  def enter
    puts "You show up at the Aikido dojo."
    print_choices("Pay attention", "Just go with the flow")

    choice = get_player_choice

    if choice == '1'
      puts "When you're thrown you roll around on the ground. It's fun."
      puts ""
      return '8th_light'
    elsif choice == '2'
      puts "You are surprised to be thrown to the ground and pull a muscle."
      return 'loss'
    else
      error
      return 'aikido'
    end
  end
end

class EighthLight < Scene
  def enter
    puts "You start you day's work at 8th Light as a new apprentice."
    print_choices("Work hard & learn stuff", "Eat the old salad in the fridge")

    choice = get_player_choice

    if choice == '1'
      puts "You learn all kinds of superpowers and everyone loves you."
      puts ""
      return 'D&D'
    elsif choice == '2'
      puts "The salad tastes bad and everyone silently judges you."
      return 'loss'
    else
      error
      return '8th_ligth'
    end
  end
end

class DandD < Scene
  def enter
    puts "You meet friends from the book store to play Dungeons and Dragons."
    print_choices("Order pizza", "Eat nothing all day except jolly ranchers")

    choice = get_player_choice

    if choice == '1'
      puts "Everyone has fun murdering imaginary monsters in madcap scenarios."
      puts ""
      return 'sleep'
    elsif choice == '2'
      puts "You crash hard convinced you flash-gave yourself type II diabetes."
      return 'loss'
    else
      error
      return 'D&D'
    end
  end
end

class Sleep < Scene
  def enter
    puts "You somehow defy space and time and get home before midnight."
    print_choices("Get your pants out for tomorrow", "Sleep immediately")

    choice = get_player_choice

    if choice == '1'
      puts "You have pants ready so you can do all this again tomorrow."
      puts ""
      return 'win'
    elsif choice == '2'
      puts "You can't find your pants next morning and have to wear a kilt."
      puts "It's windy."
      return 'loss'
    else
      error
      return 'sleep'
    end
  end
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
    'metro' => Metro.new,
    'aikido' => Aikido.new,
    '8th_light' => EighthLight.new,
    'D&D' => DandD.new,
    'sleep' => Sleep.new,
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
