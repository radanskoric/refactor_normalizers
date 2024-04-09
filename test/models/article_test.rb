require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "title is made upper case" do
    assert Article.new(title: "a helpful title").title.include?("A HELPFUL TITLE")
  end

  test "title includes click bait" do
    Article::CLICK_BAIT = ["click me!"]
    assert Article.new(title: "a helpful title").title.start_with?("click me!")
  end

  test "title ends with exclamation marks" do
    assert Article.new(title: "a helpful title").title.end_with?("!!!")
  end

  test "author is turned to screaming snake case" do
    assert Article.new(author: "Jack White").author == ("JACK_WHITE")
  end
end
