# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.
def coprime?(num_1, num_2)
    if divisor(num_1) == divisor(num_2) && divisor(num_1).length == 1
        true
    else
        false
    end
end

def divisor(num)
    (1...num).select {|n| num % n == 0}
end

#def commondiv(arr1, arr2)
#    result = []
#    arr1.each_with_index do |ele|
#        arr2.each_with_index do |e|
#                result << e if e == ele
#        end
#    end
#    print result
#    result
#end
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
