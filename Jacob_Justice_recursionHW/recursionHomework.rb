def sum_to(n)
    if n <= 0
        return nil
    elsif n == 1
        return n
    end
    
    n += sum_to(n-1)
end

#  # Test Cases
#  p sum_to(5)  # => returns 15
#  p sum_to(1)  # => returns 1
#  p sum_to(9)  # => returns 45
#  p sum_to(-8)  # => returns nil

def add_numbers(arr)
    if arr.length <= 1
        return arr[0]
    elsif arr.length == 0
        return nil
    end
    curr = arr[0]
    nextNum = arr[1]
    arr[1] = curr + nextNum
    arr.shift
    add_numbers(arr)
end

#  # Test Cases
# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

def gamma_fnc(num)
#     return num if num == 1
#     return nil if num == 0
#     newN * gamma_fnc(newN - 1)
    if num == 0
        return nil
    elsif num == 1
        return 1
    else
        newN = num - 1
        newN * gamma_fnc(num-1)
    end
end

#   # Test Cases
#  p gamma_fnc(0)  # => returns nil
#  p gamma_fnc(1)  # => returns 1
#  p gamma_fnc(4)  # => returns 6
#  p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(arr, fav)
    if (arr.class != Array && arr != fav) || arr.length == 0
        return false
    elsif (arr.class != Array && arr == fav) || arr[0] == fav
        return true
    end
    newArr = arr[1..-1]
    ice_cream_shop(newArr, fav)
end

# # Test Cases
# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(str)
    if str.length < 2 || str.length == nil
        return str
    end
    str[-1] + reverse(str[0...-1])
end

  # Test Cases
#  p reverse("house") # => "esuoh"
#  p reverse("dog") # => "god"
#  p reverse("atom") # => "mota"
#  p reverse("q") # => "q"
#  p reverse("id") # => "di"
#  p reverse("") # => ""
