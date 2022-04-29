def palindrome?(str)
    str == reverseStr(str)
end

def reverseStr(word)
    i = word.length-1
    revWord = ""
    while i >= 0
        revWord += word[i]
        i -= 1
    end
    revWord
end

def substrings(str)
    arrSub = []
    str.each_char.with_index do |char, idx|
        curSubStr = ""
        (idx...str.length).each do |i|
            curSubStr += str[i]
            arrSub << curSubStr
        end
    end
    arrSub
end

def palindrome_substrings(str)
    subStr = substrings(str)
    palSub = []
    subStr.each do |ele|
        if palindrome?(ele) && ele.length > 1
            palSub << ele
        end
    end
    palSub
end