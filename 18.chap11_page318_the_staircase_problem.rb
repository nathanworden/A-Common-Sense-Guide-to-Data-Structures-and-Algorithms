# The Staircase probelm

# Let's say we have a staircase of N steps, and a person has the ability to climb one, two, or three steps at a time. How many different possible paths can someone take to reach the top? Write a function that will calculate this for N steps.

# If there's only one stoep, there's only one possible path.

# With two steps, there are two paths. The person can climb one step twice, or they can jump up two steps at once.

# With a staircase of 3 steps, someone chould take one of 4 possible paths:
# 1, 1, 1
# 1, 2
# 2, 1
# 3

# With 4 steps, therre are 7 options:
# 1, 1, 1, 1
# 1, 1, 2
# 1, 2, 1
# 1, 3
# 2, 1, 1
# 2, 2
# 3, 1

# Recursive thinking makes the algorithm much easier.

# For an 11-step stiarcase, the first subproblem that comes to mind is the 10-step staircase. Let's go with that for now. If we know how many possible paths there are to climb a 10-step staircase, can we use that as a base for calculating the paths for an 11-step staircase?

# For starters, we do know that climbing an 11-step staircase will take at least as many steps as climbing a 10 step staircase. That is, we have al lthe paths to get to stair number 10, and from there, one can climb one more step to get to the top.

# However, this obviously isn't the complete solution, since we know that someone can also jump from stair number 9 to the top as well.

# If we think about it further, we'll realize that if you're taking any path that includes going from stair 10 to stair 11, you're not taking any of the paths that include jumping from stair 9 to stair 11. Conversely, if you jump from stair 9 to stair 11, you're not taking any of the paths that include stepping on stair 10.

# So we know that the number of paths to the top will include at aeast the number of paths to stair 10 plus the number of paths to stair 9.

# And since it's possible to also jump from stair 8 to stair 11, as one can jump three steps at a time, we need to include the ocunt of those paths as well.

# We've determined, then, that the number of steps to the top is at least the sum of all the paths to stairs 10, 9, and 8.

# However, in thinking about it even further, it's evident that there aren't any other possible paths to the top neyond these. After all, one cannot jump from stair 7 to stair 11. So we can conclude that for N steps, the number of paths is:

# number_of_paths(n - 1) + number_of_paths(n - 2) + number_of_paths(n - 3)

# Other than the base case, this will be the code for our function! 

def number_of_paths(n)
  return 0 if n < 0
  return 1 if n == 1 || n == 0
  number_of_paths(n - 1) + number_of_paths(n - 2) + number_of_paths(n - 3)
end

p number_of_paths(11)