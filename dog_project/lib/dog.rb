class Dog
    def initialize(name, breed, age, bark, favorite_foods)
    #string name, string breed, num age, bark, string[] favorite_foods 
    #setters
        @name = name, 
        @breed = breed, 
        @age = age, 
        @bark = bark, 
        @favorite_foods = favorite_foods
    end
    #getters
    def name() 
        @name
    end

    def breed() 
        @breed
    end

    def age() 
        @age
    end

    def get_favorite_foods() 
        @favorite_foods
    end

    def age=(new_age)
        @age=new_age
    end

    def bark
        if @age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_food?(food)
        #data of favorite food 
        #check if a string is inside array
        @favorite_foods.include?(food)
    end
end

p Dog.new("Sparky", "Malamute", 2, "w0f", [])
