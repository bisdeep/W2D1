class Dog
    def initialize(name, breed, age, bark, favorite_foods)
    #string name, string breed, num age, bark, string[] favorite_foods 
    #setters
        @name = name 
        @breed = breed
        @age = age 
        @bark = bark 
        @favorite_foods = favorite_foods
    end
    #getters
    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def favorite_foods 
        @favorite_foods
    end

    def age=(new_age)
        @age=new_age
    end

    def bark
        if age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_food?(food)
        @favorite_foods.map(&:downcase).include?(food.downcase)
    end
end

# p dog1 = Dog.new("Spark", "Malamute", 4, "W0f", ["bones"])
# p dog1.favorite_food?("BONES")
# p dog1.favorite_food?("bOnes")
# p dog1.favorite_food?("bones")
