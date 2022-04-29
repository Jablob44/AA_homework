def my_reject(arr, &blk)
    newArr = []
    arr.each do |ele|
        if !blk.call(ele)
            newArr << ele
        end
    end
    newArr
end

# p my_reject([7, 6, 5, 4]) { |n| n.even? }
# p my_reject([-3, 5, 0, 8]) { |n| n > 0 }
def my_one?(arr, &blk)
    element = 0
    arr.each do |ele|
        element += 1 if blk.call(ele)
    end
    if element == 1
        return true
    end
    return false
end

# p my_one?([5, 10, 7, 3]) { |n| n.even? } 
# p my_one?(["a", "b", "c", "x"]) { |char| char == "x" }
def hash_select(hash, &blk)
    newHash = Hash.new(nil)
    hash.each do |key, val|
        if blk.call(key, val)
            newHash[key] = val
        end
    end
    newHash
end

def xor_select (arr, prc1, prc2)
    newArr = []
    arr.each do |ele|
        if (prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) == prc2.call(ele))
            newArr << ele
        end
    end
    newArr
end

def proc_count (val, arrProc)
    count = 0
    arrProc.each do |proc|
        if proc.call(val)
            count += 1
        end
    end
    count
end