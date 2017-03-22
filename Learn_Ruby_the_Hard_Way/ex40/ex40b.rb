class MyStuff

  def initialize()
    # ruby @ means self or this
    # ruby $ is used for global variables
    @tangerine = "And now a thousand years between"
  end

  attr_reader :tangerine

  def apple()
    puts "I AM CLASSY APPLES!"
  end

end

thing = MyStuff.new()
thing.apple()
# ruby class variables use . 
# ruby module global variables use ::
puts thing.tangerine
