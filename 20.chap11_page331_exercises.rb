#1)
# arr = [1, 2, 3, 4, 5]


# def sum(arr)
#   return arr[0] if arr.length == 1
#   arr[0] + sum(arr[1..-1])
# end

# p sum(arr)


#2) 
# arr = [1, 2, 3, 4, 5, 6]
# def evens(arr)
#   return [] if arr.length == 0
#   if arr[0].even?
#     return [arr[0]] + evens(arr[1..-1])
#   else
#     return evens(arr[1..-1])
#   end
# end

# p evens(arr)

#3) 

# def triangular(num)
#   arr = [1]
#   num.times do |idx|
#     arr << arr[idx] + idx + 2
#   end
#   arr[num - 1]
# end

# p triangular(7)

# Using Recursion:
# def triangular(num)
#   return 1 if num == 1
#   return num + triangular(num - 1)
# end

# p triangular(7)

#4)

# def find_x(str, idx=0)
#   return idx if str[idx] == "x"
#   find_x(str, idx + 1)
# end

# p find_x("abcdefghijklmnopqrstuvwxyz")

#5) 

def unique_paths(rows, columns)
  return 1 if rows == 1 || columns == 1
  unique_paths(rows - 1, columns) + unique_paths(rows, columns - 1)
end

p unique_paths(7, 3)