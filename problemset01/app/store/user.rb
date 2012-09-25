module Store
  class User
    attr_accessor :name, :credits, :items

    def self.named(name)
     user = self.new(name)
     user
    end

    def initialize (name)
      self.credits=100
      self.items = Array.new
      self.name = name
    end

    def add_item (item)
     item.owner=self
      self.items.push(item)
    end

    def del_item(item)
      if (self.items.include? item)
        self.items.delete(item)
      end
    end

    def buy(owner, item)
      if owner.item_list.include? item
        if item.price<=self.credits
          self.credits -= item.price
          owner.credits += item.price
          self.add_item(item)
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
      self.items.each do |item|
        if item.active == true
          active_items.push(item)
        end
      end
      active_items
    end
  end
end