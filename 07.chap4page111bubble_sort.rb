# Bubble Sort

# Sorting alogorithms all solve the following problem:
# Given an array of unsorted values, how can we sort them so that they end up in ascending order?

# Bubble sort is a very basic sorting algorithm:

# 1) Point to two consecutive items in the array. Compare the first item with the second item

# 2) If the two items are out of order (if the left value is greater than the right value), swap them.

# 3) Move the pointers one cell to the right. Repeat steps 1 and 2 until we reach the end of the array or any items that have already been sorted.

# 4) Repeat stpes 1 through 3 until we have a round in which we didn't have to make any swaps. This means that the array is in order.

# Each repetitoin of steps 1 thorugh 3 is known as a passthrough. 

# Each passthrouh, the higest unsorted value "bubbles" up to its correct position.

require 'pry'

def bubble_sort(array)
  sorted = false
  while !sorted
    sorted = true
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        sorted = false
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
end

arr = [ 65, 55 ,45, 35, 25, 15, 10]
bubble_sort(arr)
p arr

p 3 / 2