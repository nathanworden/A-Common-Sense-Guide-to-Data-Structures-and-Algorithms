class TrieNode
  def initialize(self)
    self.children = {}
  end
end

class Trie
  def initialize(self)
    self.root = TrieNode.new
  end
end



# Exercises
#3) Write a function that traverses each node of a trie and prints out each key, including all "*" keys

def traverse(self, node=nil)
  currentNode = node || self.root

  for key, childNode in currentNode.children.items()
    p key
    if key != "*":
      self.traverse(childNode)
    end
  end
end

#4) Write an autocorrect function which attempts to replace a users typo witha correct word. The function should accept a string that represents text that a user typed in. If the user's string is not in the trie, the function should return an alternative word that shares the longest possible prefix with the users string.

# autocorrect is a combination of the search nad collectAllWords functions