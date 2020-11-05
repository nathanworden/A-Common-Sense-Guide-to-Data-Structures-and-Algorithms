# Recursion Category #1:
# Repeadetly execute a task

# Recursion Category #2:
# Calcuation based on a subproblem

# Recursion shines when implementing a top-don approach, because going top down offers a new mental strategy for tackling a problem.

# When tackling a top-down problem, it helps to think the following:

#1) Imagine that the function you're writing has already been implemented by someone else.

#2) What is the subproblem of the problem?

#3) See what happens when you call the function on the subproblem and go from there.



def sum(array)
  return array[0] if array.length == 1
  return array[0] + sum(array[1, array.length - 1])
end


arr = [1, 2, 3, 4, 5]

p sum(arr)


## Reverse a string using recursion

def reverse(string)
  return string[0] if string.length == 1
  return reverse(string[1, string.length]) + string[0]
end

p reverse('abcdef')

## Write a function that returns the number of "x"s in a given string

def count_x(str)
  return 0 if str.length == 0 
  if str[0] == "x"
    return 1 + count_x(str[1, str.length - 1])
  else
    return count_x(str[1, str.length - 1])
  end
end

p count_x("axbxcxd")