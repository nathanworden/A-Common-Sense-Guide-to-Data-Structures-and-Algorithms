# Write a function that determines whether two given strings are anagrams of one another

str1 = "ballon"
str2 = "nolalb"

def are_anagrams(firstString, secondString)
  first_hash = {}
  second_hash = {}
  firstString.each_char do |char|
    if first_hash[char]
      first_hash[char] += 1
    else
      first_hash[char] = 1
    end
  end

  secondString.each_char do |char|
    if second_hash[char]
      second_hash[char] += 1
    else
      second_hash[char] = 1
    end
  end
  
  first_hash == second_hash
end

p are_anagrams(str1, str2)