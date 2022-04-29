class Flight    
    def initialize(flightNum, cap)
        @flight_number = flightNum
        @capacity = cap
        @passengers = []
    end

    def passengers()
        @passengers
    end

    def full?()
        return @passengers.length >= @capacity
    end

    def board_passenger(passenger)
        if !full?() && passenger.has_flight?(@flight_number)
            @passengers << passenger
        end
    end

    def list_passengers()
        arrNames = []
        @passengers.each do |ele|
            arrNames << ele.name
        end
        return arrNames
    end

    def [](idx)
        return @passengers[idx]
    end

    def <<(passenger)
        board_passenger(passenger)
    end
end 