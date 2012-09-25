module Store
  class Item
    attr_accessor :name, :price, :owner, :active

    def self.named(name, price)
      item = self.new(price)
      item.name = name
      item
    end

    def initialize(price)
      self.price = price
      self.owner = nil
      self.active = false
    end
  end
end