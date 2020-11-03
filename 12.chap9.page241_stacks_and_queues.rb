# Stacks and Queues

# Stacks and Queues are simply arrays with restrictions. Yet, these restrictions are what makes them so elegant.

# Stacks and queues are elegant tools for handling temporary data.

# Stacks and Queues serve as temporary containers that can be used to form beautifuyl algoritms.

# Temporary data is information that doesn't have any meaning after it's procesed, so you can throw it away once you're done with it.

# Stacks and queues have a special focus on the order in which the data is handled.

########
# Stacks

# A stack stores data in the same way that arrays do- it's simply a list of elements. The one catch is that stacks have the folowing three constraints:

# 1) Data can be inserted only at the end of a stack.
# 2) Data can be deleted only from the end of the stack
# 3) Only the last element of a stack can be read.

# You an think of a stack as an actual stack of dishes: you can't look at the face of any dish other than the one at the top. Simililarly, you can't add any dish except to the top of the stack, nor can you remove any dish beshides the one at the top.

# Most programming languages don't actually come with the stack as a built-in data type or class. Instead, it's up to you to implement it yourself. This is a stark contrast with arrays, which are available in most languages.

# Here is one way to implement a stack using Ruby:


class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end

# As you can see, our stack implementation is really using an array under the hood.

# Whenever a stack is initiated, we automatically build an empty empty array with @data = []/ This @data instance variable is where all the stack's data is contained. We push new elements to the @data array, pop elements from @data array, and read elements from the @data array.


# Stacks are ideal for processing any data that should be handled in reverse order to how it was received (LIFO). The "undo" function in a word processor, for example, is agreat use case for a stack.

def reverse(str)
  stack = Stack.new
  output = ''
  str.each_char do |char| 
    stack.push(char)
  end
  str.length.times do |idx|
    output += stack.pop
  end
  output
end

p reverse("abcde")