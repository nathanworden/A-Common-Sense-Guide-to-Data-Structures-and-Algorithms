# Write a function that returns an array of all anagrams of a given string (using recursion)


# For example, the anagrams of "abc" are:

# ["abc",
# "acb",
# "bac",
# "bca",
# "cab",
# "cba"]

# Let's say that we want to collect all the anagrams of the string "abcd"

# Presumably, we could say that the subproblem is the collection of all the anagrams of "abc". The question, then is: if we had all the anagrams of "abc", how can we use them to produce all the anagrams of "abcd"?

# If we had all six anagrams of "abc", we can come up with every permutation of "abcd" if we stick the "d" in every possible spot within each anagram of "abc"

# Here's a ruby implemntation of this algorithm.

def anagrams_of(string)
  return [string[0]] if string.length == 1

  collection = []

  substring_anagrams = anagrams_of(string[1, string.length - 1])

  substring_anagrams.each do |substring_anagram|
    (0..substring_anagram.length).each do |index|
      copy = String.new(substring_anagram)
      collection << copy.insert(index, string[0])
    end
  end
  collection
end



# “This code is definitely not trivial, so let’s break it down. For now, we’ll skip over the base case.

#   We start by creating an empty array which is to hold the entire collection of anagrams:
  
#    	collection = []
#   This is the same array that we’ll return at the end of our function.
  
#   Next, we grab the array of all anagrams from the substring of our string. This substring is the subproblem string, that is, from the second character until the end. For example, if the string is "hello", the substring is "ello":
  
#    	substring_anagrams = anagrams_of(string[1, string.length - 1])
#   Note how we use the top-down mentality to assume that the anagrams_of function already works on the substring.”
  
#   “We then iterate over each of the substring_anagrams:

#    	substring_anagrams.each do |substring_anagram|
#   Before moving on, it’s worth noting at this point that we are using a combination of loops and recursion together. Using recursion doesn’t mean that you have to eliminate loops from your code altogether! We’re using each tool in the way that most naturally helps us solve the problem at hand.
  
#   For each substring anagram, we iterate over all its indexes, make a copy of the substring anagram, and insert the first character of our string (the only character not contained within the substring) into that index. Each time we do this, we have created a new anagram, which we then add to our collection:
  
#    	(0..substring_anagram.length).each do |index|
#    	  copy = String.new(substring_anagram)
#    	  collection << copy.insert(index, string[0])
#    	end
#   When we’re all done, we return the collection of anagrams.
  
#   The base case is where the substring contains only one character, in which case there’s only one anagram—the character itself!
  
#   Now that we understand how this algorithm works, let’s stop for a moment to analyze its efficiency. Interestingly, the time complexity of generating anagrams is a new category of Big O that we haven’t encountered before.
  
#   If we[…]”
  