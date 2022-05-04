class Card
    attr_accessor :face_val, :sign
    @@alphabets = (("a".."z").to_a + ("a".."z").to_a).sort

   def self.makeCard
      card = Card.new
   end

    def initialize
        @face_val = true
        @sign = @@alphabets.pop
    end

    def hide
        @face_val = false
    end

    def reveal
        @face_val = true
    end

    def to_s()
        return @sign.to_s
    end

    def ==(card)
        @sign == card.sign
    end

 

end