# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length == 0
            return nil
        end
        smallest = self.inject do |acc, ele| 
            if ele < acc
                ele
            else
                acc
            end
        end
        largest = self.inject do |acc, ele| 
            if ele > acc
                ele
            else
                acc
            end
        end
        return largest - smallest
    end

    def average
        total = 0
        if self.length == 0
            return nil
        end
        self.each do |ele|
            total += ele
        end
        (total * 1.0)/self.length
    end

    def median
        sorted = self.sort
        if self.length == 0
            return nil
        elsif self.length % 2.0 != 0
            return sorted[self.length/2.floor]
        else
            first = sorted[self.length/2]
            second = sorted[self.length/2 - 1]
            return (first+second)/2.0
        end
    end

    def counts
        counter = Hash.new(0)
        self.each do |ele|
            counter[ele] += 1
        end
        counter
    end

    def my_count(num)
        count = 0
        self.each do |ele|
            count += 1 if ele == num
        end
        count
    end

    def my_index(num)
        self.each_with_index do |ele, idx|
            if num == ele
                return idx
            end
        end
        return nil
    end

    def my_uniq
        newArr = []
        self.each do |ele|
            if !newArr.include?(ele)
                newArr<< ele
            end
        end
        newArr
    end

    def my_transpose
        new2d = Array.new(self.length){Array.new(0)}
        self.each_with_index do |arr, idx|
            arr.each_with_index do |ele, i|
                new2d[i][idx] = ele
            end
        end
        new2d
    end
end
