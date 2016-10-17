class Ex8

  def printingX2

    formatter = '%{first} %{second} %{third} %{fourth}'
    
    puts formatter % { first: 1, second: 2, third: 3, fourth: 4}
    puts 'one two three four'
    puts 'true false true false'
    puts '%{first} %{second} %{third} %{fourth}' * 4
    puts 'I had this thing. That you could type up right. But it didn\'t sing. So I said goodnight.'

  end

end
