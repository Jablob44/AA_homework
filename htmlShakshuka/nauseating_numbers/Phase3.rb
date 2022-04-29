require "byebug"
def matrix_addition_reloaded(*arrMatrix)
#     sum = []
#     m1.each_with_index do |arr, idx|
#         sumArr = []
#         arr.each_with_index do |ele, i|
#             sumArr << ele + m2[idx][i]
#         end
#         sum << sumArr
#     end
#     sum
    sum = []
    val = []
    bool = false
    arrMatrix.each_with_index do |matrix, index|
        #matrix.each_with_index do |arr, idx|
        if arrMatrix[index+1] != nil && matrix.length != arrMatrix[index+1].length
            return nil
        elsif arrMatrix.length == 1
            return arrMatrix
        end
        if arrMatrix[index+1] != nil
            if bool == false
                val = matrix_addition(matrix, arrMatrix[index+1])
                sum << val
                bool = true
            else
                sum = matrix_addition(val, arrMatrix[index+1])
            end
        end

        #    sumArr = []
        #    arr.each_with_index do |ele, i|
        #        tempArr = matrix[idx+1]
        #        if tempArr != nil
        #           sumArr << ele + tempArr[i]
        #        end
        #    end
        #    sum << sumArr

       #end
    end
    sum
end

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

p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil
p "NEXT PROBLEM: _______________________________________________"
#========================================================================
def squarocol?(arr2d)
    hori = false
    vert = false
    vertToflat = Hash.new([])
    arr2d.each_with_index do |arr, idx|
        arr.each_with_index do |ele,i|
            if arr[i-1] != nil && arr[i-1] == ele
                hori = true
            else
                hori = false
            end
            vertToflat[i] += [ele]
        end
    end
    p "==========================="
    vertToflat.each do |key, val|
        counter = 0
        val.each_with_index do |cur, index|
            if index == 0 && cur == val[index+1]
                counter += 1
            elsif val[index-1] != nil && val[index-1] == cur
                counter += 1
            end
        end
        vert = true if counter == arr2d.length
    end
    return vert || hori
end

p squarocol?([
    [:a, :x , :d],
    [:b, :x , :e],
    [:c, :x , :f],
]) # true

p squarocol?([
    [:x, :y, :x],
    [:x, :z, :x],
    [:o, :o, :o],
]) # true

p squarocol?([
    [:o, :x , :o],
    [:x, :o , :x],
    [:o, :x , :o],
]) # false

p squarocol?([
    [1, 2, 2, 7],
    [1, 6, 6, 7],
    [0, 5, 2, 7],
    [4, 2, 9, 7],
]) # true

p squarocol?([
    [1, 2, 2, 7],
    [1, 6, 6, 0],
    [0, 5, 2, 7],
    [4, 2, 9, 7],
]) # false
p "NEXT PROBLEM: _______________________________________________"
#========================================================================
def squaragonal?(arr2d)
    firstCross = []
    secondCross = []
    firstcount = 0
    secondcount = arr2d[0].length - 1
    arr2d.each_with_index do |arr, idx|
        if firstcount < arr.length
            firstCross << arr[firstcount]
            firstcount += 1
        end
        if secondcount >= 0
            secondCross << arr[secondcount]
        end
    end
    loopcountFirst = 0
    loopcountSecond = 0
    firstCross.each_with_index do |cur, index|
        if index == 0 && cur == firstCross[index+1]
            loopcountFirst += 1
        elsif firstCross[index-1] != nil && firstCross[index-1] == cur
            loopcountFirst += 1
        end
    end
    secondCross.each_with_index do |cur, index|
        if index == 0 && cur == secondCross[index+1]
            loopcountSecond += 1
        elsif secondCross[index-1] != nil && se[index-1] == cur
            loopcountSecond += 1
        end
    end 
    if loopcountFirst == arr2d[0].length || loopcountSecond == arr2d[0].length
        return true
    else
        return false
    end
end

p squaragonal?([
    [:x, :y, :o],
    [:x, :x, :x],
    [:o, :o, :x],
]) # true

p squaragonal?([
    [:x, :y, :o],
    [:x, :o, :x],
    [:o, :o, :x],
]) # true

p squaragonal?([
    [1, 2, 2, 7],
    [1, 1, 6, 7],
    [0, 5, 1, 7],
    [4, 2, 9, 1],
]) # true

p squaragonal?([
    [1, 2, 2, 5],
    [1, 6, 5, 0],
    [0, 2, 2, 7],
    [5, 2, 9, 7],
]) # false
p "NEXT PROBLEM: _______________________________________________"
#========================================================================
def pascals_triangle(num)

end


p pascals_triangle(5)
# [
#     [1],
#     [1, 1],
#     [1, 2, 1],
#     [1, 3, 3, 1],
#     [1, 4, 6, 4, 1]
# ]

p pascals_triangle(7)
# [
#     [1],
#     [1, 1],
#     [1, 2, 1],
#     [1, 3, 3, 1],
#     [1, 4, 6, 4, 1],
#     [1, 5, 10, 10, 5, 1],
#     [1, 6, 15, 20, 15, 6, 1]
# ]