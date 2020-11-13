#1) 
# def add_until_100(array)
#   return 0 if array.length == 0
#   sum_of_remaining_numbers = add_until_100(array[1, array.length - 1])
#   if array[0] + sum_of_remaining_numbers > 100
#     return sum_of_remaining_numbers
#   else
#     return array[0] + sum_of_remaining_numbers
#   end
# end


#2)
# def golomb(n, memo={})
#   return 1 if n == 1
#   if !memo[n]
#     memo[n] = 1 + golomb(n - 1 golomb(golomb(n-1, memo), memo), memo)
#   end
#   memo[n]
# end

#3)
def unique_paths(rows, columns, memo={})
  return 1 if rows == 1 || columns == 1
  if !memo[[rows, columns]]
    memo[[rows, columns]] = unique_paths(rows - 1, columns, memo) + unique_paths(rows, columns - 1, memo)
  end
  return memo[[rows, columns]]
end

# unique paths