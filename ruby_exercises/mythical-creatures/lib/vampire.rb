class Vampire 
    attr_reader :name, :pet 
    def initialize( name = "Dracula" , pet = "bat")
        @name = name
        @pet = pet
        @drink = false
    end

    def thirsty
       if @drink == false
         true
       else
        false
       end 
    end

    def drink
        @drink = true
    end
end