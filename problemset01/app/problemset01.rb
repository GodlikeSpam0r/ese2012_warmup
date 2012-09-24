module Problemset01

    class Problemset01
      attr_accessor :name, :credits

      def self.named (name)
        user = self.new
        user.name = name
        user.credits= 0
        user
      end
    end
end