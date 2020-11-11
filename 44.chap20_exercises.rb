#1)

# football_players = [
#   {first_name: "Hanzla", last_name: "Radosti", team: "32ers"}, 
#   {first_name: "Tina", last_name: "Watkins", team: "Barleycorns"},
#   {first_name: "Alex", last_name: "Patel", team: "32ers"}, 
#   {first_name: "Jill", last_name: "Huang", team: "Barleycorns"}, 
#   {first_name: "Wanda", last_name: "Vakulskas", team: "Barleycorns"}
# ]

# basketball_players = [
#   {first_name: "Jill", last_name: "Huang", team: "Gators"},
#   {first_name: "Janko", last_name: "Barton", team: "Sharks"},
#   {first_name: "Wanda", last_name: "Vakulskas", team: "Sharks"},
#   {first_name: "Jill", last_name: "Moloney", team: "Gators"},
#   {first_name: "Luuk", last_name: "Watkins", team: "Gators"}
# ]

# def both(arr1, arr2)
#   output = []
#   football_hsh = {}
#   arr1.each do |player|
#     full_name = "#{player[:first_name]} #{player[:last_name]}"
#     football_hsh[full_name] = true
#   end
  
#   arr2.each do |player|
#     full_name = "#{player[:first_name]} #{player[:last_name]}"
#     output << full_name if football_hsh[full_name]
#   end
#   output
# end

# p both(football_players, basketball_players)



#2) 
# require 'pry'

# arr = [2, 3, 0, 6, 1, 5]

# def find_missing(arr)
#   output = []
#   arr.each_with_index do |num, idx|
#     output[num] = num
#   end
#   output.index(nil)
# end

# p find_missing(arr)


# # Difference of the sums implementation

# def find_missing2(arr)
#   whole = 0
#   arr.length.times do |num|
#     whole += num + 1
#   end
#   whole - arr.sum
# end

# p find_missing2(arr)


##########

#3) 
# arr = [10, 7, 5, 8, 11, 2, 6]

# def stocks(arr)
#   buy = arr[0]
#   sell = arr[0]
#   diff = 0
#   arr.each_with_index do |current_num, idx|
#     if current_num < buy
#       buy = current_num
#       sell = current_num
#     else
#       sell = current_num if current_num > sell
#     end

#     current_diff = sell - buy
#     if current_diff > diff
#       sell = current_num
#       diff = current_diff
#     end
#   end
#   diff
# end

# p stocks(arr)


# Book answer
# arr = [10, 7, 5, 8, 11, 2, 6]

# def find_greatest_profit(array)
#   buy_price = array[0]
#   greatest_profit = 0
#   array.each do |price|
#     potential_profit = price - buy_price
#     if price < buy_price
#       buy_price = price
#     elsif potential_profit > greatest_profit
#       greatest_profit = potential_profit
#     end
#   end
#   greatest_profit
# end

# p find_greatest_profit(arr)




###################
#4 ) Compute the higest product of any two numbers in the array.

# arr = [5, -10, -6, 9, 4]

# def highest_product(arr)
#   # We are looking for the higest two numbers OR highest two numbers that are negative.
#   highest = arr[0]
#   second_highest = arr[0]
#   lowest_neg = arr[0]
#   second_lowest_neg = arr[0]
#   arr.each do |num|
#     if num > highest
#       second_highest = highest
#       highest = num 
#     end
#     if num < lowest_neg
#       second_lowest_neg = lowest_neg
#       lowest_neg = num
#     end
#     if num < second_lowest_neg && num != lowest_neg
#       second_lowest_neg = num
#     end
#   end
#   pos = highest * second_highest 
#   neg = lowest_neg * second_lowest_neg
#   pos > neg ? pos : neg
# end

# p highest_product(arr)






#####################

#5) 

# arr = [98.6, 98.0, 97.1, 99.0, 98.9, 97.8, 98.5, 98.2, 98.0, 97.1]

# def low_to_high(arr)
#   hsh = {}
#   output = []
#   current = 97.0
#   while current < 99.0
#     hsh[current] = false
#     current =  (current + 0.1).round(2)
#   end

#   arr.each do |temp|
#     hsh[temp] = true
#   end
  
#   hsh.each do |key, value|
#     if value
#       output << key
#     end
#   end

#   output
# end

# p low_to_high(arr)



######################### 

#6)

arr = [ 10, 5, 12, 3, 55, 30, 4, 11, 2]
arr2 = [19, 13, 15, 12, 18, 14, 17, 11]

def longest_consec_seq(arr)
  sorted = []
  arr.each do |num|
    sorted[num] = num
  end

  longest = 0
  current_streak = 0
  sorted.each do |num|
    if num != nil
      current_streak += 1
    else
      current_streak = 0
    end

    longest = current_streak if current_streak > longest
  end

  longest
end

p longest_consec_seq(arr)
p longest_consec_seq(arr2)


# Book answer:

def longest_sequence_length(array)
  hash_table = {}
  greatest_sequence_length = 0
  array.each do |number|
    hash_table[number] = true
  end
  array.each do |number|
    if !hash_table[number - 1]
      current_sequence_length = 1
      current_number = number
      while hash_table[current_number + 1]
        current_number += 1
        current_sequence_length += 1
        if current_sequence_length > greatest_sequence_length
          greatest_sequence_length = current_sequence_length
        end
      end
    end
  end
  return greatest_sequence_length
end

p longest_sequence_length(arr)
p longest_sequence_length(arr2)