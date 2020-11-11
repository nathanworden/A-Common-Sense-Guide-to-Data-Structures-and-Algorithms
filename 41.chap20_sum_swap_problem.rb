# The Sum Swap Problem

# Write a function that accepts two arrays of integers. Your function needs to find one number from each array that can be swapped to cause the two array sums to be equal.

def sum_swap(arr1, arr2)
  hsh = {}
  sum1 = 0
  sum2 = 0

  arr1.each_with_index do |num, idx|
    sum1 += num
    hsh[num] = idx
  end

  arr2.each do |num|
    sum2 += num
  end
  p shift_amount = (sum1 - sum2) / 2

  arr2.each_with_index do |num, idx|
    if hsh[num + shift_amount]
      return [hsh[num + shift_amount], idx]
    end
  end
  nil
end

arr1 = [5, 3, 3, 7]  #swap the 7...
arr2 = [4, 1, 1, 6]  # with the 4...
# ... and the sum of both arrays will be 15.

p sum_swap(arr1, arr2)  # This will return an array of the INDEXES of the two numbers that need to be switched. In the first array, the 7 is at index 3. In the second array the 4 is at index zero. Hence, the return value of this function is:

# [3, 0]

