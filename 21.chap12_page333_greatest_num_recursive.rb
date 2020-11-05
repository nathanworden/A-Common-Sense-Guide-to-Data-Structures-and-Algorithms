def max(array)
  return array[0] if array.length == 1
  max_of_remainder = max(array[1, array.length - 1])
  if array[0] > max_of_remainder
    return array[0]
  else
    return max_of_remainder
  end
end

p max([1, 2, 3, 4])