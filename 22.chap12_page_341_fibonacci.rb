# Fibonacci sequence:

# def fib(n)
#   return n if n == 0 || n == 1
#   return fib(n - 2) + fib(n - 1)
# end

# p fib(10)

## The problem with this ^ is that we are calling the recursive funtion twice.
# A function calling itself twice leads us down the road to O(2^N)

# In the case of the Fibonacci sequence we need to make a call to both fin(n-2) and fin(n-1), since each Fibonacci number is the sum of those other two numbers.

# This is a case of overlapping subproblems.

# When a problem is solved by solving smaller verions of the same problem, the smaller problem is called a sub-problem.

# The subproblems overlap in the case of fibonacci because both fib(n-2) and fib(n-1) end up calling many of the same functions as each other.

# A solution:
# Dynamic Programming Through Memoization

# Dynamic programming is the process of opitmizing recursive probnlems that have overlapping subproblems.

# memoization is a technique for reducing recursive calls in cases of overlapping subproblems

# Memoization reduces recursive calls by remembering previously computed functions

# When a function is called, the result is stored in a hash table.

# We will pass the hash table along as a second parameter to the function

def fib(n, memo={})
  return n if n == 0 || n == 1
  if !memo[n]
    memo[n] = fib(n - 2, memo) + fib(n - 1, memo)
  end
  memo[n]
end

p fib(10)