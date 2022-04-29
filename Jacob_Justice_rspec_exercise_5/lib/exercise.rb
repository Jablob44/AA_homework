def zip(*arr)
    new2dArr = []
    idx = 0
    while idx <= arr[0].length - 1
        tempArr = []
        arr.each do |array|
            tempArr << array[idx]
        end
        new2dArr << tempArr
        idx += 1
    end
    new2dArr
end

# array_1 = ['a', 'b', 'c'] 
# array_2 = [1, 2, 3] 
# array_3 = ['w', 'x', 'y'] 
# p zip(array_1, array_2, array_3)

def prizz_proc(arr, prc1, prc2)
    newArr = []
    arr.each do |ele|
        if prc1.call(ele) && !prc2.call(ele)
            newArr << ele
        elsif !prc1.call(ele) && prc2.call(ele)
            newArr << ele
        end
    end
    newArr
end

def zany_zip (*arr)
    # new2dArr = []
    # leng = arr.sort {|a, b| a.length <=> b.length}
    # arr.each_with_index do |e, i|
    #     size = leng[-1]
    #     tempArr = Array.new(size.length, nil)
    #     arr.each do |array|
    #         tempArr << array[i]
    #     end
    #     new2dArr[i] = tempArr
    # end
    # new2dArr
    new2dArr = []
    leng = arr.sort {|a, b| a.length <=> b.length}
    idx = 0
    while idx <= leng[-1].length - 1
        tempArr = []
        arr.each do |array|
            if array[idx] == nil
               tempArr << nil
            else
                tempArr << array[idx]
            end
        end
        new2dArr << tempArr
        idx += 1
    end
    new2dArr
end

def maximum (arr, &blk)
    return nil if arr.length == 0
    return arr.inject do |acc, ele|
        if blk.call(ele).to_i >= blk.call(acc).to_i
            ele
        else
            acc
        end
    end
end

def my_group_by (arr, &blk)
    newHash = Hash.new(0)
    arr.each do |ele|
        tempArr = []
        arr.each do |e|
            if blk.call(e) == blk.call(ele)
                tempArr << e
            end
        end
        newHash[blk.call(ele)] = tempArr
    end
    newHash
end

def max_tie_breaker(arr, prc, &blk)
    currentMax = arr[0]
    arr.each do |ele|
        if blk.call(ele) == blk.call(currentMax) && prc.call(ele) > prc.call(currentMax)
            currentMax = blk.call(ele)
        elsif blk.call(ele) > blk.call(currentMax)
            currentMax = ele
        end
    end
    currentMax
end

def silly_syllables(str)
    vowels = "aeiou"
    words = str.downcase.split(" ")
    words.each_with_index do |word, idx|
        first = false
        if vowelcount(word) >= 2
            checkDone = 0
            word.each_char.each_with_index do |char, i|
                if checkDone == 1
                    i -= 1
                end
                if !vowels.include?(char)
                    words[idx].slice!(i)
                    checkDone += 1
                    p words[idx]
                else
                    first = true
                    p words[idx]
                    break
                end
            end
            p words[idx]
            if first
                i = word.length - 1
                while i >= 0
                    if !vowels.include?(word[i])
                        words[idx].slice!(i)
                        p words[idx]
                    else
                        break
                    end
                    i -= 1
                end
            end
        end
    end
    words.join(" ")
end

def vowelcount(word)
    vowels = "aeiou"
    counter = 0
    word.each_char do |char|
        if vowels.include?(char)
            counter += 1
        end
    end
    return counter
end