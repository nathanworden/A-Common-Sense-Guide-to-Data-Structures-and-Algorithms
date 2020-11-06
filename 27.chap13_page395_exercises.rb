# Chapter 13 exercises

# Given an array of positive numbers, wrte a function that returns the greatest product of any three numbers. The approach of using three newsted loops would clock in at O(N^3), which is very slow. Use sorting to implement the function in a way that it computes at O(N log N) speed.

# arr = [4, 7, 2]

# def greatest(arr)
#   arr.sort!
#   arr[-1] * arr[2] * arr[-3]
# end

# p greatest(arr)


#####

#2)
# def find_missing_number(array)
#   array.sort!

#   array.each_with_index do |num, idx|
#     return idx if num != idx
#   end
# end

# arr = [9, 3, 2, 5, 6, 7, 1, 0, 4]
# p find_missing_number(arr)


#3) 

arr = [1, 2, 3, 7, 3]

def one(arr)
  output = 0
  arr.each do |num|
    output = num if num > output
  end
  output
end

def two(arr)
  arr.sort[-1]
end

def three(arr)

  arr.each do |i|
    i_is_greatest = true
    arr.each do |j|
      if j > i
        i_is_greatest = false
      end
    end
    return i if i_is_greatest
  end
end

p one(arr)
p two(arr)
p three(arr)