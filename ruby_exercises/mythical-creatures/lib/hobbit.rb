class Hobbit
    attr_reader :name, :disposition

    def initialize (name, disposition = "homebody")
        @name = name
        @disposition = disposition
        @age = 0
        @short = true
    end

    def age
        @age
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
        if @age >= 33
            true
        else
            false
        end
    end

    def old?
        if @age >= 101
            true
        else
            false
        end
    end

    def has_ring?
        if @name == "Frodo"
            true
        else
            false
        end
    end

    def short?
        @short
    end
end