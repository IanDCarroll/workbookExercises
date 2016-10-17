class Ex8

  def printingX2

    formatter = '%{first} %{second} %{third} %{fourth}'
    
    puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
    puts formatter % {first: 'one', second: 'two', third: 'three', fourth: 'four'}
    puts formatter % {first: true, second: false, third: true, fourth: false}
    puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}
    puts 'I had this thing. That you could type up right. But it didn\'t sing. So I said goodnight.'

  end

end
