# Define your methods here.
def string_map! (str, &blk)
    str.each_char.with_index do |char, idx|
        str[idx] = blk.call(char)
    end
    str
end

def three?(arr, &blk)
    numTrue = 0
    arr.each do |ele|
        numTrue += 1 if blk.call(ele)
    end
    numTrue == 3
end

def nand_select (arr, prc1, prc2)
    newArr = []
    arr.each do |ele|
        if !prc1.call(ele) || !prc2.call(ele)
            newArr << ele
        end
    end
    newArr
end

def hash_of_array_sum(hash)
    sum = 0
    hash.each do |k, v|
        v.each do |ele|
            sum += ele
        end
    end
    sum
end

def abbreviate (str)
    newSent = ""
    vowels = "aeiouAEIOU"
    words = str.split(" ")
    words.each_with_index do |word, idx|
        if word.length > 4
            word.each_char do |char| 
                if !vowels.include?(char) 
                    newSent += char 
                end
            end
            if words[idx + 1] != nil
                newSent += " "
            end
        elsif words[idx + 1] != nil
            newSent += word + " "
        elsif words[idx + 1] == nil
            newSent += word
        end
    end
    newSent
end

def hash_selector(hash, *other)
    newHash = Hash.new(0)
    if other.length == 0
        return hash
    end
    hash.each do |k, v|
        other.each do |ele|
            if ele == k
                newHash[k] = v
            end
        end
    end
    newHash
end