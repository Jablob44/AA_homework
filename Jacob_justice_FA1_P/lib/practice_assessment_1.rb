# Define your methods here. 

def first_letter_vowel_count(str)
    vowels = "aeiou"
    count = 0
    str.downcase.split(" ").each do |word|
        count += 1 if vowels.include?(word[0])
    end
    count
end

def count_true(arr, prc)
    count = 0
    arr.each do |ele|
        count += 1 if prc.call(ele)
    end
    count
end

def procformation (arr, prc1, prc2, prc3)
    newArr = []
    arr.each do |ele|
        if prc1.call(ele)
            newArr << prc2.call(ele)
        else
            newArr << prc3.call(ele)
        end
    end
    newArr
end

def array_of_array_sum (arr2d)
    sum = 0
    arr2d.each do |arr|
        arr.each do |ele|
            sum += ele
        end
    end
    sum
end

def selective_reverse(str)
    vowels = "aeiou"
    newSent = ""
    wordArr = str.split(" ")
    wordArr.each_with_index do |word, idx|
        if !vowels.include?(word[0]) && !vowels.include?(word[-1])
            wordArr[idx] = word.reverse
        end
    end
    wordArr.join(" ")
end
p selective_reverse("this is an important test sentence")
def hash_missing_keys(hash, *other)
    missingArr = []
    other.each do |val|
        if hash[val] == nil
            missingArr << val
        end
    end
    missingArr
end