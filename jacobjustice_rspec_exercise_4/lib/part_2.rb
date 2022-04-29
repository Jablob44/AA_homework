def proper_factors(num)
    arr = []
    (1...num).each do |n|
        if num%n == 0
            arr << n
        end
    end
    arr
end

p proper_factors(6)
p proper_factors(12)
p proper_factors(9)

def aliquot_sum (num)
    arrFac = proper_factors(num)
    arrFac.sum
end

def perfect_number?(num)
    if num == aliquot_sum(num)
        return true
    end
    return false
end

def ideal_numbers(n)
    arrPerf = []
    perfNum = 0
    i = 1
    while perfNum < n
        if perfect_number?(i)
            arrPerf << i
            perfNum += 1
        end
        i += 1
    end
    arrPerf
end