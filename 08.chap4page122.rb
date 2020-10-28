# Lets say we're writing an application that requires you to check whether an array contains any duplicate numebrs

def has_duplicate_value(arr)
  (arr.length - 1).times do |i|
    (arr.length - 1).times do |j|
      if i != j && arr[i] == arr[j]
        return true
      end
    end
  end
  false
end

arr = [1, 5, 3, 9, 1, 4]   # Has a duplicate number
arr2 = [1, 2, 3, 4, 5, 6]   # Does not have a duplicate

p has_duplicate_value(arr)   # == true
p has_duplicate_value(arr2)  # == false

# While this works, is it efficient?

# Remember that Big O is a measure of how many steps our algorithm would take relative to how much data there is. 

# For N elements in the array, how many steps would our algorithm take in a worst case scenario?

# In our function, there is one type of step, the comparisons.

# In a worst case scenario, the array contains no duplicates which would force our code to complete all of the loops and exhaust every possible comparison before returning false.

# Based on this, we can conclude that for N elements in the array, our function would perform N^2 comparisons. This is because we perform an outer loop that must iterate N times to get though the entire array, and for each iteration, we must iterate another N times with our inner loop. That's N * N steps, which is otherwise known as N^2 steps.

# When an algorithm nests one loop inside another, the algorithm is O(N^2). 

# O(N^2) is considered a relatively slow algorithm.

### 
# A LINEAR SOLUTION
###

# No nested loops this time:

def has_duplicate_value_linear(array)
  existing_numbers = []
  (array.length - 1).times do |i|
    if existing_numbers[array[i]] == nil
      existing_numbers[array[i]] = 1
    else
      return true
    end
  end
  false
end

arr = [1, 5, 3, 9, 1, 4]   # Has a duplicate number
arr2 = [1, 2, 3, 4, 5, 6]   # Does not have a duplicate

p has_duplicate_value_linear(arr)   # == true
p has_duplicate_value_linear(arr2)  # == false

# For this implementation, the numper of stieps will equal the size of the array. This is O(N).

