require 'test/unit'
require 'app/store/user'
require 'app/store/item'

class UserTest  < Test::Unit::TestCase
  def test_add_item
    user = new user.named("John")
    item =  item("test", 10, user)
    item.active = true
    user.add_item(item)
    assert(user.item_list=[item],"Add item test failed")
  end
end