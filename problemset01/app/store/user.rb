module Store
  class User
    attr_accessor :name, :credits, :items

    def self.named (name)
      user = self.new
      user.name = name
      user
    end

    def initialize
      @credits=100
      @items = Array.new
    end

    def add_item (name, price)
      item = item(name, price, self)
      @items.push(item)
    end

    def del_item(item)
      if (@items.include? item)
        @items.delete(item)
      end
    end

    def buy(owner, item)
      if owner.active_items.include? item
        if item.price<=self.credits
          self.credits -= item.price
          owner.credits += item.price
          self.add_item(item, item.price)
          owner.del_item(item)
        else
          puts("Not enough credits!\n")
        end
      else
        puts("Invalid item!\n")
      end

    end

    def item_list
      active_items = Array.new
      @items.each do |item|
        if item.active?
          active_items.push(item)
        end
        active_items
      end
    end
  end
end