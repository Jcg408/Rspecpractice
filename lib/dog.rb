class Dog
   def initialize(hunger: 0)
    @hunger = hunger
   end

    def bark
        return "Woof!"
    end

    def hungry?
       @hunger > 5
    end

    def feed
        @hunger =0
    end

end