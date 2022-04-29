def select_even_nums(arr)
    result = arr.select do |ele|
        ele % 2 == 0
    end
    result
end

def reject_puppies(arrHash)
    result = arrHash.reject do |ele|
        ele["age"] <= 2
    end
    result
end

def count_positive_subarrays(arr2d)
    arrSums = []
    arr2d.each do |arr|
        arrSums << arr.sum if arr.sum > 0
    end
    return arrSums.count #im using count here but rspec says im not, why?
end

def aba_translate(str)
    vowels = "aeiou"
    newStr = ""
    str.each_char do |char|
        if vowels.include?(char)
            newStr += char + "b" + char
        else
            newStr += char
        end
    end
    newStr
end

def aba_array(arr)
    arr.map do |ele|
        aba_translate(ele)
    end
end