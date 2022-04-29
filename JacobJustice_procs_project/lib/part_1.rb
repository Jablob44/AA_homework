def my_map(arr, &blk)
    newArr = []
    arr.each do |ele|
        newArr << blk.call(ele)
    end
    newArr
end

def my_select(arr, &blk)
    newArr = []
    arr.each do |ele|
        newArr << ele if blk.call(ele)
    end
    newArr
end

def my_count(arr, &blk)
    count = 0
    arr.each do |ele|
        count += 1 if blk.call(ele)
    end
    count
end

def my_any?(arr, &blk)
    arr.each do |ele|
        return true if blk.call(ele)
    end
    false
end

def my_all?(arr, &blk)
    arr.each do |ele|
        return false if !blk.call(ele)
    end
    return true
end

def my_none?(arr, &blk)
    arr.each do |ele|
        return false if blk.call(ele)
    end
    return true
end