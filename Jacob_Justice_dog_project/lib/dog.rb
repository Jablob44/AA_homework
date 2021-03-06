class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name()
        @name
    end

    def breed()
        @breed
    end

    def age()
        @age
    end

    def age=(num)
        @age = num
    end

    def bark()
        return @bark.upcase if @age > 3
        return @bark.downcase if @age <= 3
    end

    def favorite_foods()
        @favorite_foods
    end

    def favorite_food?(str)
        isFound = false
        @favorite_foods.each do |food|
            isFound = true if food.downcase == str.downcase
        end
        isFound
    end
end
