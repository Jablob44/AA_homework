class Player
    def get_move()
        puts "enter a position with coordinates separated with a space like '4 7'"
        input = gets.chomp
        vals = []
        input.split(" ").each do |ele|
            vals << ele.to_i
        end
        return vals
    end
end
