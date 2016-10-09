require 'minitest/autorun'
require './ex3'

class Ex3Test < Minitest::Test

  def setup
    @ex3 = Ex3.new()
  end

  def test_text
    assert_output(/^I will now count my chickens:
Hens 30
Roosters 97
Now I will count the eggs:
7
Is it true that 3 + 2 < 5 - 7?
false
what is 3 + 2? 5
what is 5 - 7? -2
Oh, that's why it's false.
How about some more.
Is it greater? true
Is it greater or equal? true
Is it less or equal? false\n$/) { @ex3.math }
  end

end
