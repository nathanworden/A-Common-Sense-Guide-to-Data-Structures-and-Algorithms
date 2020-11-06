def quickselect!(kth_lowest_value, left_index, right_index)
  if right_index - left_index <= 0
    return @array[left_index]
  end

  pivot_index = partition!(left_index, right_index)

  if kth_lowest_value < pivot_indexquickselect!(kth_lowest_value, left_index, pivot_index - 1)
  elsif kth_lowest_value > pivot_index
    quickselct!(kth_lowest_value, pivot_index + 1, right_index)
  else
    return @array[pivot_index]
  end
end

# If you wanted to find the second to lowest value of an unsorted array, you'd run the following code:

array = [0, 50, 20, 10, 60, 30]
sortable_array = SortableArray.new(array)
p sortable_array.quickselect!(1, 0, array.length - 1)