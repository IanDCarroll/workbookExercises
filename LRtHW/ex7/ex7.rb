class Ex7

  def more_printing

    puts "Mary had a little lamb."
    puts "Its fleece was white as #{'snow'}."
    puts "And everywhere that Mary went."
    puts "." * 10

    char1 = 'C'
    char2 = 'h'
    char3 = 'e'

    char5 = 's'

    char7 = 'B'
    char8 = 'u'
    char9 = 'r'
    cha10 = 'g'


    # print = puts w/o \n #
    print char1 + char2 + char3 * 2 + char5 + char3 
    puts char7 + char8 + char9 + cha10 + char3 + char9

  end

end

ex7 = Ex7.new()

ex7.more_printing()
