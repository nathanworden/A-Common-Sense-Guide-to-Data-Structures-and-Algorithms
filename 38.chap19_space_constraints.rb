# Time Complexity vs. Space complexity

# Space complexity becomes an important factor when memory is limited. If you have an enormouse amount of data, or are programming for a small device with limited memory, space complexity can matter a lot.

# For TIME complexity, the 'key question' was "If there are N data elements, how many steps will the algorithm take?"

# When it comes to memory consumption, the key question is: "If there are N data elements, how many units of memory will the algorithm consume?"





# The hidden cost of recursion

# Recursive functions take up O(N) space.

# A function takes up a unit of space for each recursive call it makes.

# def recurse(n)
#   return if n < 0
#   p n
#   recurse(n - 1)
# end

# recurse(20000)

# ErrorL stack level too deep

# Loop Approach:

def loop(n)
  while n > 0
    p n
    n -= 1
  end
end

loop(20000)