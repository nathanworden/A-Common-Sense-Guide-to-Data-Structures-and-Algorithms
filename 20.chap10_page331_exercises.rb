arr = [1, 2, 3, 4, 5]


def sum(arr)
  return arr[0] if arr.length == 1
  arr[0] + sum(arr[1..-1])
end

p sum(arr)