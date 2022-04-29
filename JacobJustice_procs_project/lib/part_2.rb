def reverser(str, &blk)
    return blk.call(str.reverse)
end

def word_changer(str, &blk)
    newSent = []
    str.split(" ").each do |word|
        newSent << blk.call(word)
    end
    return newSent.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    return prc1.call(num) if prc1.call(num) > prc2.call(num)
    return prc2.call(num) if prc2.call(num) > prc1.call(num)
end

def and_selector(arr, prc1, prc2)
    newArr = []
    arr.each do |ele|
        newArr << ele if prc1.call(ele) && prc2.call(ele)
    end
    newArr
end

def alternating_mapper(arr, prc1, prc2)
    i = 0
    newArr = []
    while i < (arr.length)
        if i % 2 == 0
            newArr << prc1.call(arr[i])
        else
            newArr << prc2.call(arr[i])
        end
        i += 1
    end
    newArr
end