def all_words_capitalized?(arr)
    
    arr.all? do |word|
        tempw = ""
        word.each_char {|char| tempw += char}
        tempw = tempw[0].upcase + tempw[1..tempw.length-1].downcase
        word == tempw
    end
end

def no_valid_url?(arr)
    arr.none? do |url|
        url.include?(".com") || url.include?(".net") || url.include?(".io") || url.include?(".org")
    end
end

def any_passing_students?(arrHash)
    arrHash.any? do |hash|
        print hash[:grades]
        average = hash[:grades].sum/(hash[:grades].length * 1.0)
        #print hash[:grades]
        average >= 75
    end
end