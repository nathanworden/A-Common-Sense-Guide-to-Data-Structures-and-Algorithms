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

arr = [2, 3, 0, 6, 1, 5]

def find_missing(arr)
  arr.each_with_index do |num, idx|
    if num == idx

    else
      p arr
      arr[num] = arr[idx]
      arr[idx] = arr[num]
      p num
      p arr[num]
      p arr
    end
  end
  arr
end

p find_missing(arr)