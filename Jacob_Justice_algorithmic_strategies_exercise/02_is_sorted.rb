# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)
def is_sorted(arr)
    arr == sort(arr)
end
def sort(arr)
    newarr = []
    arr.each {|ele| newarr<< ele}
    is_s = false
    while !is_s
        is_s = true
        (0...newarr.length-1).each do |i|
            if newarr[i] > newarr[i + 1] 
                newarr[i], newarr[i+1] = newarr[i+1], newarr[i]
                is_s = false
            end
        end
    end
    newarr
end
p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
