require 'minitest/spec'
require 'minitest/autorun'
require './ex11'

class Ex11Test < Minitest::Test

#  def setup
#    @ex11 = Ex11.new()
#  end

  # ex11.questions needed to be seprated into its own function to test. 
  # Otherwise gets.chomp cloggs up the unit tests.
  # Instead, I separate out the concerns, and mock the input of
  # ex11.questions for ex11.answer.
  # The trouble is I still have no way to test the connection between
  # qustions and answer because gets.chomp makes things difficult.

#  def test_answer
#    assert_output(/So, you're 33 years old, 66 inches tall and 155 lbs heavy\./) { @ex11.answer("33 years","66 inches","155 lbs") }
#  end

  describe "Answering questions" do
    before do
      @ex11 = Ex11.new()
      def get_age; "33 years" end
      def get_height; "66 inches" end
      def get_weight; "155 lbs" end
    end

    it "should print" do
      @ex11.answer.must_equal "So you're 33 years old, 66 inches tall and 155 lbs heavy."
    end
  end
end
