# Greedy algorithms

# Write an algorithm that finds the greatest number in an array

def max(arr)
  greatest = array[0]
  arr.each do |num|
    if num > greatest
      greatest = num
    end
  end
  greatest
end

# Its greedy because as it finds a number that is greater than what it already has, it wants the new one. Like a kid in a candy shop grabing the first candy we see, but as soon as we see a bigger candy we drop the first one and grab the bigger one.








## Find the largest subsection sum
# (subsections means contiguous subsections)

arr = [3, -4, 4, -3, 5, -9]

# If th negative number causes the preceding subsection's sum to sink to a negative number, the streak is broken. But if the negative number simply lowers the current subsectiobn's sum, but the sum remains a positive number, the streak isn't broken.

def max_subsection_sum(arr)
  current_sum = 0
  greatest_sum = 0

  arr.each_with_index do |num, idx|
    if current_sum + num < 0
      current_sum = 0
    else
      current_sum += num
      greatest_sum = current_sum if current_sum > greatest_sum
    end
  end
  greatest_sum
end

p max_subsection_sum(arr)






# Given an array, determine whether there are three rising prices. (They don't have to be directly one after another. You just have to find them going from left to right where there is a "righthand" price that is greater than a "middle" price which is greater than a "left hand" price)


# Make a single pas trhough the entire array according to the following steps:
#1) If the current price is lower than the lowest price we've encountered so far, this price becomes the new lowest price.
#2) If the current price is higher than the lowest price, but lower than the middle price, we update the middle price to be the currecnt price.
#3) If the current price is higher than the lowest and middle price, it means we've found a three-price upward trend

def increasing_triplet?(array)
  lowest_price = array[0]
  middle_price = Float::INFINITY

  array.each_with_index do |price|
    if price <= lowest_price
      lowest_price = price
    elsif price <= middle_price
      middle_price = price
    else
      return true
    end
  end
  false
end