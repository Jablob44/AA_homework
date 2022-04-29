class Passenger
    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def name()
        @name
    end

    def has_flight?(flightNum)
        return @flight_numbers.include?(flightNum.downcase) || @flight_numbers.include?(flightNum.upcase)
    end

    def add_flight(flightNum)
        if !has_flight?(flightNum)
            @flight_numbers << flightNum.upcase
        end
    end
end