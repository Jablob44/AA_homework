def average(num1, num2)
    average = (num1+num2)/2.0
    average
end

def average_array(arr)
    arr.sum/(arr.length * 1.0)
end

def repeat(str, num)
    str*num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    words = str.downcase.split(" ")
    i = 0
    while i < words.length
        words[i] = words[i].upcase
        i+=2
    end
    words.join(" ")
end
