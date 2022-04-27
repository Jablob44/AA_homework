require_relative "room"

class Hotel
    def initialize(name, hash)
        newHash = Hash.new(0)
        @name = name
        hash.each do |k, v|
            newHash[k] = Room.new(v)
        end
        @rooms = newHash
    end

    def name()
        newName = @name.split(" ")
        newName.each_with_index do |word, idx| 
            newName[idx] = word[0].upcase + word[1..-1]
        end
        return newName.join(" ")
    end

    def rooms()
        return @rooms
    end

    def room_exists?(name)
        if @rooms.include?(name)
            return true
        else
            return false
        end
    end

    def check_in(person, name)
        if !room_exists?(name)
            p "sorry, room does not exist"
        else
            @rooms[name].add_occupant(person)
            p "important info\n"
            print @rooms[name].occupants
            print @rooms[name].capacity
            print @rooms[name].available_space
            print name
            p "=========end of important info========"
            if @rooms[name].occupants.include?(person)
                p "check in successful"
            else
                p "sorry, room is full"
            end
        end
    end

    def has_vacancy?()
        hasSpace = false
        rooms.each do |k, v|
            hasSpace = true if v.available_space != 0
        end
        hasSpace
    end

    def list_rooms()
        @rooms.each do |k, v|
            puts k.to_s + " " + v.available_space.to_s
        end
    end
end

