require "byebug"
require_relative "card.rb"
class Board
    # def self.makeCard
    #     letter = alphabets.sample
    #     card1 = Card.new(letter)
    #     card2 = Card.new(letter)
    #     arr_pair = [card1,card2]
    # end

    def initialize(n)
        @grid = Array.new(n){Array.new(n)}
        @size = n * n  
        @card_arr = []
        @size.times do
            @card_arr << Card.makeCard
        end
    end

    def populate
        @card_arr.each do |ele|
            find_space(ele)
        end
            # # newPair = Board.makeCard
            # # debugger
            # if hasCard?(newPair[0]) == false  
            #     find_space(newPair[0])
            #     find_space(newPair[1])
            #     i += 1
            # end
    end

    # def []= (pos,value)
    #     @grid[pos[0]][pos[1]] = value
    # end

    def find_space(card)
        found = false
        while !found
            ranCol = rand(0...@grid.length)
            ranRow = rand(0...@grid.length)
            if @grid[ranRow][ranCol] == nil
                @grid[ranRow][ranCol] = card
                found = true
            end 
        end
    end

    # def hasCard?(card)
    #     @grid.each do |row|
    #         row.each do |ele|
    #             if ele != nil && ele == card
    #                 return true
    #             end
    #         end
    #         # return true if row.any?{|el| el == card}
    #     end
    #     return false
    # end

    def render
        i = 1
        puts " "+(1..grid.length).to_s + "\n"
        @grid.each do |row|
            puts i.to_s + " " + row.map(&:to_s).join(" ")
        end
    end



end









# pos1 = false
# idx = 0
# while !pos1 && idx <= @size
#     ranCol = (0...@grid.length)
#     ranRow = (0...@grid.length) 
#     if @grid[ranRow][ranCol] == nil
#         @grid[ranRow][ranCol] = newPair[0]
#         pos1 = true
#     end 
#     idx += 1
# end
# pos2 = false
# while !pos2
#     ranCol = (0...@grid.length)
#     ranRow = (0...@grid.length) 
#     if @grid[ranRow][ranCol] == nil
#         @grid[ranRow][ranCol] = newPair[1]
#         pos2 = true
#     end 
# end
# i += 1 