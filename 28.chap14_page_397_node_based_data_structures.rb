# Node Based Data Structures

# Linked Lists seem almost identical to arrays, but with their own set of trade-offs in efficiency that can give us a performance boost for certain situations.

# Like an array, a linked list is a data strcuture that represents a list of items.

# Instead of being a contingous block of memory, the data from linked lists can be scattered across different cells thoughout the computer's memory.

# Connected data that is dispersed throughout memory are known as nodes. In a linked list, each node represents one item in the list.

# If the nodes are not next to each other in memory, how does the computer know which nodes are part of the same linked list?

# Each node also comes with a little extra information: the memory address of the next node in the list.

# This extra piece of data, this pointer to the next node's memory address- is known as a link.

# Each node consists of two memory cells. The first cell holds the actual data, while the second cell serves as a link that indicates where in memory the next node begins. The final node's link contains null since the linked list ends there.

# If the computer knows which memory address the linked list begins at, it has all it needs to begin working with the list. Since each node contains a link to the next node, all the computer needs to do is follow each link to string together the entire list.

# The fact that a linked list's data can be spread thoughout the computer's memory is a potential advantage it has over the array. An array, by contrast, needs to find an entire block of continguous cells to store its data, which can get increasingly difficult as the array size grows. Now, thse details are managed by your programming language under the hood, so you may not have to worry about them. However, we'll see shortly that there are more tangile differences between linked lists and arrays that we can sink our teeth into.



####### IMPLEMENTING A LINKED LIST #########

class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
  end
end

class LinkedList
  attr_accessor :first_node

  def initialize(first_node)
    @first_node = first_node
  end

  def read(index)
    current_node = first_node
    current_index = 0
    while current_index < index do
      current_node = current_node.next_node
      current_index += 1
      return nil unless current_node
    end
    return current_node.data
  end

  def index_of(value)
    current_node = first_node
    current_index = 0
    loop do
        if current_node.data == value
          return current_index
        end

      current_node = current_node.next_node
      current_index += 1
    end while current_node
    return nil
  end

  def insert_at_index(index, value)
    new_node = Node.new(value)
    if index == 0
      new_node.next_node = first_node
      self.first_node = new_node
      return
    end

    current_node = first_node
    current_index = 0

    while current_index < (index - 1) do
      current_node = current_node.next_node
      current_index += 1
    end

    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def delete_at_index(index)
    if index == 0
      self.first_node = first_node.next_node
      return
    end

    current_node = first_node
    current_index = 0

    while current_index < (index - 1) do
      current_node = current_node.next_node
      current_index += 1
    end

    node_after_deleted_node = current_node.next_node.next_node
    current_node.next_node = node_after_deleted_node
  end

  def print_list
    current_node = first_node
    while current_node
      p current_node.data
      current_node = current_node.next_node
    end
  end

  def last_element
    current_node = first_node
    while current_node.next_node
      current_node = current_node.next_node
    end
    current_node.data
  end

  def reverse!
    previous_node = nil
    current_node = first_node

    while current_node
      next_node = current_node.next_node

      current_node.next_node = previous_node

      previous_node = current_node
      current_node = next_node
    end
    self.first_node = previous_node
  end
end

node_1 = Node.new("once")
node_2 = Node.new("upon")
node_1.next_node = node_2

node_3 = Node.new("a")
node_2.next_node = node_3

node_4 = Node.new("time")
node_3.next_node = node_4

list = LinkedList.new(node_1)
list.read(3)

# p list.index_of("time")
# list.print_list
# p list.last_element
list.reverse!
list.print_list

### Efficiency of Reading a Linked List

# A computer can read from an array in O(1) time.

# If you wanted to read, say, the value of the third item of a linked list, the computer could not look it up in one step, because it wouldn't immediately know where to find it in the computer's memory. After all, each node of a linked list could be anywhere in memory! Instead, all the program knows is the memory address of the first node of the linked list.

######## AT THE END OF THE DAY: #########

# Linked lists are an amazing data structure for moving through an entire list while making insertions or deletions, as we never have to worry about shifting other data as we make an insertion or deletion (as you would have to in an array)

