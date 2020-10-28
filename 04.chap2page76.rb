# Binary Search

# Start your guess in the middle, because you automatically eliminate half the possible numbers. (Assuming you are searching within an ordered array)


# Implementation of binary search in Ruby:


def binary_search(array, target)
  lower_bound = 0
  upper_bound array.length - 1
  while lower_bound <= upper_boud do
    midpoint = (upper_bound + lower_bound) / 2
    value_at_midpoint = array[midpoint]
    if target == value_at_midpoint
      return midpoint
    elsif target < value_at_midpoint
      upper_bound = midpoint - 1
    elsif target > value_at_midpoint
      lower_bound = midpoint + 1
    end
  end
  return nil
end

# The pattern that emerges is that for each time we double the number of items in the ordered array, the number of steps needed for binary search increases by just one. This makes sense, as each lookup iliminates half of the elements from the search.

# This pattern is unusually efficient: each time we double the data, the binary search algorithm adds just one more step.

# With linear search, there are as many stpes as there are items. Every time you double the number of elements in the array, you double the number of steps. For binary search, every time we double the number of elements in the array, we only need to add one more step.

# For an array the size of one million, linear search would take up to one smillion steps, while binary search would take up to just twenty steps.


# implement binary search

# lower bound
# upper bound
# midpoint
# target

# if the target is higher than the midpoint, the lower bound becomes midpoint + 1
# If the target is lower than the midpoint, then the upper bound becomes the midpoint - 1

def binary_search(array, target)
  lower_bound = 0
  upper_bound = array.length - 1
  while lower_bound <= upper_bound
    midpoint = (lower_bound + upper_bound) / 2
    value_at_midpoint = array[midpoint]
    if target = value_at_midpoint
      return midpoint
    elsif target > value_at_midpoint
      lower_bound = midpoint + 1
    elsif target < value_at_midpoint
      upper_bound = midpoint - 1
    end
  end
  return nil
end
