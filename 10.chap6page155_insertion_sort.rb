# Insertion Sort

#1) In the first passthrough, we temporarily remove the value at index 1 (the second cell) and store it in a temporary variable. This will leave a gap at that index, since it contains no value.

# In subsequent passthroughs, we remove the value at the subsequent indexes.

#2) We then begin a shifting phase, where we take each value to the left of the gap, and compare it to the value in the temporary variable. If the value to the left of the gap is greater than the temporary variable, we shift that value to the right.

# As we shift values to the right, inherently, the gap moves leftwards. As soon as we encounter a value that is lower than the temporarily removed value, or we reach the let end of the array, the shifting phase is over.

#3) We then insert the temporarily removed value into the current gap

#4) Repeate steps 1 through 3 until the array is fully sorted.

def insertion_sort(arr)
  (arr.length - 1).times do |index|
    index += 1
    position = index
    temp_value = arr[index]

    while position > 0 && arr[position - 1] > temp_value
      arr[position] = arr[position - 1]
      position -= 1
    end
    arr[position] = temp_value
  end
  arr
end

arr = [2, 4, 7, 1, 3]

p insertion_sort(arr)

# The Efficiency of Insertion Sort

# There are four types of steps that occur in Insertion Sort: removals, comparisons, shifts, and insertions.