class Dragon
    attr_reader :name, :color, :rider
    def initialize ( name , color , rider)
        @name = name 
        @color = color
        @rider = rider
        @hunger = 3
    end

    def hungry?
        if @hunger <= 0
            false
        else
            true
        end
    end

    def eat
        @hunger -= 1
    end
end