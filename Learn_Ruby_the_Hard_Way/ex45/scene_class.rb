
class Scene
  def enter
    puts "I didn't write anything for the scene yet or set it where to go" 
    puts "so this is the end."
    exit(1)
  end

  def print_choices(choice1, choice2)
    puts "\t1. #{choice1}"
    puts "\t2. #{choice2}"
  end

  def get_player_choice
    print "> "
    return $stdin.gets.chomp
  end

  def error
    puts "Sorry that's not a 1 or a 2. Try again."
  end
end
