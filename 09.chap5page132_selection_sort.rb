# Selection Sort

#1) We check each cell of the array from left to right to determine which value is least. As we move from cell to cell, we keep track of the lowest value we've encountered so far. (We'll do this by storing its index in a variable). If we encounter a cell that contains a value that is even lower than the one in our variable, we replace it so that the variable now points to the new index.

#2) Once we've determined which index contains the lowest value, we swap its value with the value we began the passthrough with.  This would be index 0 in the first passthrough, index 1 in the second passthrough, and so on and so forth.

#3) Repeat steps 1 and 2 until all data is sorted.

#Implementation:

def selectionSort(array)
  (array.length - 1).times do |i|
    lowest_number_index = i
    (array.length - 1).times do |j|
      j += 1
      if array[j] < array[lowest_number_index]
        lowestNumberIndex = j
      end
    end

    if lowest_number_index != i
      temp = array[i]
      array[i] = array[lowest_number_index]
      array[lowest_number_index] = temp
    end
  end
  array
end

# Efficiency of Selection Sort

# We have to make N comparisons for N elements
# But we only have to make 1 or zero swaps (depending on whether the lowest number of that passthrough is already in the correct posiioont).

# Contrast this with Bubble sort, where in a worst case scenario (an array in decending order) we have to make a swap for each and every comparision.


# Big O Notation ignores constants