def strange_sums(arr)
    count = 0
    arr.each_with_index do |ele, idx|
        arr.each_with_index do |e, i|
            if i < idx && (ele + e) == 0
                count += 1
            end
        end
    end
    count
end


p strange_sums([2, -3, 3, 4, -2])     # 2
p strange_sums([42, 3, -1, -42])      # 1
p strange_sums([-5, 5])               # 1
p strange_sums([19, 6, -3, -20])      # 0
p strange_sums([9])                   # 0
p "NEXT PROBLEM: _______________________________________________"
#========================================================================

def pair_product(arr, num)
    arr.each_with_index do |ele, idx|
        arr.each_with_index do |e, i|
            if i > idx 
                return true if (ele * e) == num
            end
        end
    end
    return false
end

p pair_product([4, 2, 5, 8], 16)    # true
p pair_product([8, 1, 9, 3], 8)     # true
p pair_product([3, 4], 12)          # true
p pair_product([3, 4, 6, 2, 5], 12) # true
p pair_product([4, 2, 5, 7], 16)    # false
p pair_product([8, 4, 9, 3], 8)     # false
p pair_product([3], 12)             # false
p "NEXT PROBLEM: _______________________________________________"
#========================================================================

def rampant_repeats(word, hash)
    longWord = ""
    word.each_char do |char|
        if hash[char] != nil
            longWord += char * hash[char]
        else
            longWord += char
        end
    end
    longWord
end

p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'
p "NEXT PROBLEM: _______________________________________________"
#========================================================================
def perfect_square(num)
    if num == 1
        return true
    end
    (1...num).each do |fac|
        if num%fac == 0 && fac*fac == num
            return true
        end
    end
    return false
end


p perfect_square(1)     # true
p perfect_square(4)     # true
p perfect_square(64)    # true
p perfect_square(100)   # true
p perfect_square(169)   # true
p perfect_square(2)     # false
p perfect_square(40)    # false
p perfect_square(32)    # false
p perfect_square(50)    # false