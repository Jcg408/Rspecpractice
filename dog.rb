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

end