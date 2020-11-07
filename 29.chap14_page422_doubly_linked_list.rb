# Doubly Linked Lists

# A doubly linked list is like a linked list, except that each node has two links, one that points to the next node and another that points to the previous node.

# The doubly linked list always keeps track of both the first and last nodes instead of just the first node

class Node
  attr_accessor :data, :next_node, :previous_node
  def initialize(data)
    @data = data
  end
end

class DoublyLinkedList
  attr_accessor :first_node, :last_node
  def initialize(first_node=nil, last_node=nil)
    @first_node = first_node
    @last_node = last_node
  end

  def insert_at_end(value)
    new_node = Node.new(value)
    if !first_node
      @first_node = new_node
      @last_node = new_node
    else
      new_node.previous_node = @last_node
      @last_node.next_node = new_node
      @last_node = new_node
    end
  end

  def print_list_reverse
    current_node = last_node
    while current_node
      p current_node.data
      current_node = current_node.previous_node
    end
  end
end

node_1 = Node.new("once")
node_2 = Node.new("upon")
node_3 = Node.new("a")
node_4 = Node.new("time")

node_1.next_node = node_2
node_2.next_node = node_3
node_2.previous_node = node_1
node_3.next_node = node_4
node_3.previous_node = node_2
node_4.previous_node = node_3

doubly_linked_list = DoublyLinkedList.new(node_1, node_4)
doubly_linked_list.print_list_reverse