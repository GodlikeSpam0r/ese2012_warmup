require 'test/unit'
class UserTest  < Test::Unit::TestCase
  def test_add_item
    user = new user.named("John")
    user.add_item("1")
    user.item_list
  end
end