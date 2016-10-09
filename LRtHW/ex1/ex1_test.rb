require 'minitest/autorun'
require './ex1'

class TestBlog < Minitest::Test

  describe Blog do
    before do
      @ex1 = Blog.new
    end

    describe "#title" do
      it "returns the tile of the blog" do
        @ex1.title.must_equal "Treehouse Blog"
      end
    end
  end
end
