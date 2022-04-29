def element_count(arr)
    counter = Hash.new(0)
    arr.each do |ele|
        counter[ele] += 1
    end
    return counter
end

def char_replace!(str, hash)
    str.each_char.with_index do |char, idx|
        if hash.include?(char)
            str[idx] = hash[char]
        end
    end
    str
end

def product_inject(arr)
    result = arr.inject do |acc, el|
        acc*el
    end
    result
end