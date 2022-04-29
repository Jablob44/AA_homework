def is_prime?(num)
    if num < 2
        return false
    end
    (2...num).each do |i|
        if num%i == 0
            return false
        end
    end
    return true
end

def nth_prime(n)
    num = 0
    i =0
    while num != n
        num += 1 if is_prime?(i)
        i += 1
    end
    return i-1
end

def prime_range(min, max)
    primes = []
    (min..max).each do |p|
       primes << p if is_prime?(p)
    end
    return primes
end