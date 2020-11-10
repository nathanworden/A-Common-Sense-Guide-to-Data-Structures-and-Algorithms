# Heap implementation

class Heap
  def initialize
    @data = []
  end

  def root_node
    @data.first
  end

  def last_node
    @data.last
  end

  def left_child_index(index)
    (index * 2) + 1
  end

  def right_child_index(index)
    (index * 2) + 2
  end

  def parent_index(index)
    (index - 1) / 2
  end
  
  def insert(value)
    @data << value
    new_node_index = @data.length - 1

    while new_node_index > 0 && @data[new_node_index] > @data[parent_index(new_node_index)]
      @data[parent_index(new_node_index)], @data[new_node_index] = @data[new_node_index], @data[parent_index(new_node_index)]
      new_node_index = parent_index(new_node_index)
    end
  end

  def delete
    @data[0] = @data.pop
    trickle_node_index = 0
    while has_greater_child(trickle_node_index)
      larger_child_index = calculate_larger_child_index(trickle_node_index)
      @data[trickle_node_index], @data[larger_child_index] = @data[larger_child_index], @data[trickle_node_index]

      trickle_node_index = larger_child_index
    end
  end

  def has_greater_child(index)
    (@data[left_child_index(index)] && @data[left_child_index(index)] > @data[index]) || (@data[right_child_index(index)] && @data[right_child_index(index)] > @data[index])
  end

  def calculate_larger_child_index(index)
    if !data[right_child_index(index)]
      return left_child_index(index)
    end

    if @data[right_child_index(index] > @data[left_child_index(index)]
      return right_child_index(index)
    else
      return left_child_index(index)
    end
  end
end

# Traversing a heap would have been straightforward if we could have simply followed each node's links. But now that the heap is an array under the hood, how do we know which nodes are connected to each other?

# It turns out that when we assign the indexes of the hea's nodes according to the pattern descibed above, the following traits of a heap are always true:

# To find the left child of any node we can use the formula: (index * 2) + 1
# To find the right child of any node we can use the formula: (index * 2) + 2
# To find a node's parent, we can use the formula: (index - 1) / 2

