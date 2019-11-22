class Calculator
    
    def initialize(a, b, c=0)
        @a = a;
        @b = b;
        @c = c
    end

    def add 
    @a + @b + @c
    end

    def multiply
        @a * @b 
    end

    def subtract
        @a - @b
    end

    def divide
        @a / @b 
    end
end