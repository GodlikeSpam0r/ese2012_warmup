class User
  attr_accessor :@name, :@credits, :@items

  def self.named (name)
    user = self.new
    user.name = name
    user
  end

  def initialize
    @credits=100
    @items = Array.new
  end

  def add_item (item)
    @items.push(item)
  end

  def item_list
    @items
  end
end