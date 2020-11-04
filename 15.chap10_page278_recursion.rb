# Recursion is the term for a function calling itself.

def countdown(num)
  p num
  return if num == 0
  countdown(num - 1)
end

# countdown(10)


# The case in which our function will not recurse is known as the base case.

# Every recursive function needs at least one base case to prevent it from calling itself indefinitly.

#### Factorial Example

def factorial(number)
  if number == 1
    return 1
  else
    return number * factorial(number - 1)
  end
end

# To read recursive code, you should:
#1) Identify the base case
#2) Walk through the function for the base case
#3) Identify the "next-to-last" case. 
#4) Walk through the function for the "next-to-last" case
#5) Repeat this process by identifying the case before the one you just analyzed, and walking throug hte function for that case.


p factorial(4) #would equal 24
