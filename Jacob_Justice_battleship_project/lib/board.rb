class Board
    def initialize (n)
        @grid = Array.new(n, :N) {Array.new(n, :N)}
        @size = n*n
        @n = n
    end

    def size()
        @size
    end

    def [](arr)
        @grid[arr[0]][arr[1]]
    end

    def []=(pos, val)
        @grid[pos[0]][pos[1]] =  val
    end

    def num_ships()
        count = 0
        @grid.each do |arr|
            arr.each do |spot|
                if spot == :S
                    count += 1 
                end
            end
        end
        count
    end

    def attack(pos)
        if self[pos] == :S   
            self[pos] = :H
            puts "you sunk my battleship!"
            return true 
        else
            self[pos] = :X
            return false
        end
    end

    def place_random_ships()
        pos = (@size * 0.25).floor
        while num_ships() < pos
            first = rand(0...@n)
            second = rand(0...@n)
            if @grid[first][second] != :S
                @grid[first][second] = :S
            end
        end
        #p "end"
    end

    def hidden_ships_grid()
        new2d = []
        @grid.each do |arr|
            newArr = []
            arr.each do |ele|
                if ele != :S
                    newArr << ele
                else
                    newArr << :N
                end
            end
            new2d << newArr
        end
        new2d
    end

    def self.print_grid(arr2d)
        arr2d.each do |arr|
            puts arr.join(" ")
        end
    end

    def cheat()
        Board.print_grid(@grid)
    end

    def print()
        Board.print_grid(hidden_ships_grid)
    end
end
