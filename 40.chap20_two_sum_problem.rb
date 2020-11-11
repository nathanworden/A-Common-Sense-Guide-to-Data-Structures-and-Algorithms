# There's a well-known coing exercise known as the two sum problem. The task is to write a function that accepts an array of numbers and return true or false depending on whether there are any two numbers in the array that add up to 10 (or another given number).

def twoSum(array)
  hash = {}
  array.length.times do |idx|
    return true if hash[10 - array[idx]]
    hash[array[idx]] = true
  end
  false
end

arr = [2, 0, 4, 1, 7, 9]

p twoSum(arr)