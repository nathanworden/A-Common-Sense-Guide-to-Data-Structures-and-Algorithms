# Here's a recursive function that finds the greatest number from an array

arr = [45, 76, 12, 1, 3, 99, 65, 43, 103, 22, 43, 65, 12, 2]

def max(array)
  return array[0] if array.length == 1
  if array[0] > max(array[1, array.length - 1])
    return array[0]
  else
    return max(array[1, array.length - 1])
  end
end

p max(arr)