def partition(arr, num)
    arr2d = [[], []]
    arr.each do |ele|
        if ele >= num 
            arr2d[1] << ele
        else
            arr2d[0] << ele
        end
    end
    arr2d
end

def merge(hash1, hash2)
    newHash = Hash.new(0)
    hash2.each {|key, val| newHash[key] = val}
    hash1.each do |key, val|
        if newHash[key] == 0
            newHash[key] = val
        end
    end
    newHash
end

def censor(sent, arrCurse)
    arrWords = sent.split(" ")
    newSent = []
    (0...arrWords.length).each do |i|
        if arrCurse.include?(arrWords[i].downcase)
            newSent << vowelsToStar(arrWords[i])
        else
            newSent << arrWords[i]
        end
    end
    newSent.join(" ")
end

def vowelsToStar (word)
    vowels = "aeiou"
    newWord = ""
    word.each_char do |char|
        if vowels.include?(char.downcase)
            newWord += "*"
        else
            newWord += char
        end
    end
    newWord
end

def power_of_two?(num)
    while num > 1
        if num%2 != 0 && num != 1
            return false
        elsif num < 2
            break
        end
        num = num/2.0
    end
    return true
end