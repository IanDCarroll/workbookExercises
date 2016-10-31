class Ex14

  def prompt_name
    ARGV.first
  end

  def prompt_var
    '> '
  end

  def prompt_likes
    user_name = prompt_name
    prompt = prompt_var

    puts "Hi #{user_name}."
    puts "I'd like to ask you a few questions."
    puts "Do you like me #{user_name}? ", prompt
    $stdin.gets.chomp
  end

  def prompt_lives
    user_name = prompt_name
    prompt = prompt_var

    puts "Where do you live #{user_name}? ", prompt
    $stdin.gets.chomp
  end

  def prompt_computer
    prompt = prompt_var

    puts "What kind of computer do you have? ", prompt
    $stdin.gets.chomp
  end

  def prompt
    likes = prompt_likes
    lives = prompt_lives
    computer = prompt_computer

    puts """
Alright, So you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
"""
  end

end

ex14 = Ex14.new()

ex14.prompt
