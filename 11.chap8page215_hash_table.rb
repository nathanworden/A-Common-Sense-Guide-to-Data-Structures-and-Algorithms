# The Hash Table

# Hash Maps have fast reading.
# A Hash table is a list of paired values.

# Its a list of key-value pairs.

# Looking up a value in a hash table has an efficiency of O(1) since it takes just one step.

# The process of taking characters and converting them to numbers is known as hashing. The code that is used to convert those letters into particular numbers is called a hash function.

# Hash functions need to meet only one criterion to be valid: a hash function must convert the same string to the same number every single time its applied. If the hash function can return inconsistent results for a given string, it's not valid.

# Looking up a value in a hash table is typically O(1): it's a process that takes a constant amount of time. 

# Trying to add data to a cell that is already filled is known as a collision.

# On classic approach for handling collisions is known as separate chaining. When a collision occurs, instead of placing a single value in the cell, it places in it a reference to an array.

# Ultimately, a hash table's efficiency depends on three factors:
# - How much data we're storing in the hash table
# - How many cells are available in the hash table
# - Which hash function we're using

# A good hash function is one that distributes its data across all available cells.

# A good hash table strikes a balance of avoiding collisions while not consuming lots of memory.

# Hash table rule of thumb: for every seven data elements stored in a hash table, it should have ten cells.

# This ratio of data to cells is called the load factor. Using this terminology, we'd say that the ideal load factor is .7.



# Exercise:
# Write a function that returns the intersection of two arrays. The intersection is a third array that contains all values contained within the first two arrays. For example, the intersection of [1, 2, 3, 4, 5] and [0, 2, 4, 6, 8] is [2, 4]. Your function should have a complexity of O(N).

arr1 = [1, 2, 3, 4, 5]
arr2 = [0, 2, 4, 6, 8]

# def intersection(arr1, arr2)
#   output = []

#   arr2.each do |element|
#     output.push(element) if arr1.include?(element)
#   end

#   output
# end

# p intersection(arr1, arr2)

def intersection(arr1, arr2)
  hsh = {}
  output = []
  arr1.each do |ele|
    hsh[ele] = true
  end

  arr2.each do |ele|
    output.push(ele) if hsh[ele] 
  end

  output
end

# p intersection(arr1, arr2)


#### 2

def duplicate(arr)
  hsh = {}

  arr.each do |ele|
    return ele if hsh[ele]
    hsh[ele] = true
  end

  false
end

dup = ["a", "b", "c", "d", "c", "e", "f"]

# p duplicate(dup)


### 3

str = "the quick brown box jumps over a lazy dog"
def find(str)
  hsh = {}
  str.gsub(" ", "").split('').each {|ele| hsh[ele] = true}
  ("a".."z").to_a.map {|ele| return ele if !hsh[ele]}
end

p find(str)


### 4

def non_dup(str)
  hsh = {}
  str.split('').each do |ele| 
    if hsh[ele]
      hsh[ele] += 1
    else
      hsh[ele] = 1
    end
  end

  hsh.each {|key, value| return key if value == 1}
end

p non_dup("minimum")