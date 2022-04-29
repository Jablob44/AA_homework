def anti_prime?(num)
    (1...num).each do |n|
        if numOfDiv(n) > numOfDiv(num)
            return false
        end
    end
    return true
end

def numOfDiv (num)
    count = 0
    (1..num).each do |fac|
        if num%fac == 0
            count += 1
        end
    end
    return count
end
p anti_prime?(24)   # true
p anti_prime?(36)   # true
p anti_prime?(48)   # true
p anti_prime?(360)  # true
p anti_prime?(1260) # true
p anti_prime?(27)   # false
p anti_prime?(5)    # false
p anti_prime?(100)  # false
p anti_prime?(136)  # false
p anti_prime?(1024) # false
p "NEXT PROBLEM: _______________________________________________"
#========================================================================
def matrix_addition(m1, m2)
    sum = []
    m1.each_with_index do |arr, idx|
        sumArr = []
        arr.each_with_index do |ele, i|
            sumArr << ele + m2[idx][i]
        end
        sum << sumArr
    end
    sum
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]
p "NEXT PROBLEM: _______________________________________________"
#========================================================================
def mutual_factors(*arr)
    facHash = Hash.new(0)
    arrCommonFac = []
    arr.each do |num|
        findFac(num).each do |fac|
            facHash[fac] += 1
        end
    end
    print facHash
    facHash.each do |key, val|
        if val == arr.length
            arrCommonFac << key
        end
    end
    return arrCommonFac
end

def findFac (num)
    fac = []
    (1..num).each do |f|
        if num%f == 0
            fac << f
        end
    end
    return fac
end
p mutual_factors(50, 30)            # [1, 2, 5, 10]
p mutual_factors(50, 30, 45, 105)   # [1, 5]
p mutual_factors(8, 4)              # [1, 2, 4]
p mutual_factors(8, 4, 10)          # [1, 2]
p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
p mutual_factors(12, 24, 64)        # [1, 2, 4]
p mutual_factors(22, 44)            # [1, 2, 11, 22]
p mutual_factors(22, 44, 11)        # [1, 11]
p mutual_factors(7)                 # [1, 7]
p mutual_factors(7, 9)              # [1]
p "NEXT PROBLEM: _______________________________________________"
#========================================================================
def tribonacci_number(num)
    arrTrib = [1, 1, 2]
    (2..num).each do |i|
        arrTrib << arrTrib[i - 2] + arrTrib[i - 1] + arrTrib[i]
    end
    return arrTrib[num-1]
end

p tribonacci_number(1)  # 1
p tribonacci_number(2)  # 1
p tribonacci_number(3)  # 2
p tribonacci_number(4)  # 4
p tribonacci_number(5)  # 7
p tribonacci_number(6)  # 13
p tribonacci_number(7)  # 24
p tribonacci_number(11) # 274