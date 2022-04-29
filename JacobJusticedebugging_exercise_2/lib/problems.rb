# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"
def largest_prime_factor(num)
    factors = findFactors(num)
    factors.inject do |acc, el|
        if el > acc
            el
        else
            acc
        end
    end
end
def findFactors(num)
    factors = []
    (1..num).each do |fac|
        if num % fac == 0 && isPrime?(fac)
            factors << fac
        end
    end
    factors
end

def isPrime?(num)
    if num < 2
        return false
    end
    (2...num).each do |fac|
        if num % fac == 0
            return false
        end
    end
    return true
end

#======================================================

def unique_chars?(str)
    lettercount = Hash.new(0)
    str.downcase.each_char do |char|
        lettercount[char] += 1
    end
    lettercount.each do |key, val|
        return false if val > 1
    end
    return true
end

#======================================================

def dupe_indices(arr)
    duplicates = Hash.new(0)
    currentDups = []
    arr.each_with_index do |ele, idx|
        arr.each_with_index do |e, i|
            if duplicates.values.index(i) != nil
                break
            elsif i < idx && ele == e 
                currentDups << i
                currentDups << idx
                duplicates[ele] = currentDups
            end
        end
        currentDups = []
    end
    duplicates.sort #Im confused since this returns the result, the only difference is the hash rocket and {}
end
p dupe_indices(["a", "b", "c", "c", "b"])
#======================================================

def ana_array(arr1, arr2)
    newHash = add_ele(arr1)
    newHash2 = add_ele(arr2)
    newHash == newHash2

end

def add_ele(arr)
    counter = Hash.new(0)
    arr.each do |ele|
        counter[ele] += 1
    end
    counter.sort
end
#arr = [1,3,8,3,6,0,2,4,2,1]
#arr2 = [3,1,3,8,6,0,4,2,1,2]
#p add_ele(arr).sort
#p add_ele(arr2).sort

#p ana_array(arr, arr2)