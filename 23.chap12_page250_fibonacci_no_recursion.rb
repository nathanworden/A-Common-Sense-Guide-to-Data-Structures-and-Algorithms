# Fibonacci, no recursion

def fib(n)
  return 0 if n == 0
  a = 0
  b = 1
  i = 1
  while i < n
    a, b = b, a + b
    i += 1
  end
  b
end


p fib(10)