require 'minitest/autorun'
require './ex1'

class TestBlog < Minitest::Test

  def setup
    @ex1 = Blog.new
  end

  def test_title_is_treehouse
    assert_equal "Treehouse Blog", @ex1.title
  end
end
