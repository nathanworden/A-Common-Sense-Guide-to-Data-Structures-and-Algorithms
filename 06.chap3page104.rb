# Determine whether a number is prime:

def prime(num)
  for i in (2...num)
    if num % i == 0
      return false
    end
  end
  true
end

p prime(5)



O(2)

O(N)

O(log n)

O(N)

O(1)