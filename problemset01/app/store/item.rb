module Store
  class Item
    attr_accessor @name, @price, @owner, @active

    def self(name, price, owner)
      item = self.new(price, owner)
      item.name = name
      item
    end

    def initialize(price, owner)
      self.price = price
      self.owner = owner
      self.active = false
    end
  end
end