# WHen it comes to insertions and deletions, ordered arrays are slow. Whenever a value is inserted into an ordered array, we first shift all items greater than that value one cell to the right. And when a value is deleted from an ordered array, we shift all greater values one cell to the left. This takes N steps in a worst-case scenario (inserting into or deleting from the first value of the array), and N/2 steps on average. Either way, its O(N), and O(N) is relatively slow for a simple insertion or delition.

# Hash tables are O(1) for search, insertion, and deletion, but they have one significant disadvantage: they do not maintain order.

# But what do we do if we want a data structure that maintains order, and also has fast search, insertion, and deletion? Neither an ordered array nor a hash table is ideal.

# enter the binary search tree.

##### Binary Trees #####

# A tree is a node-based data structure, but within a tree, each node can have links to multiple nodes.

# In a tree, the uppermost node is called the root.

# Binary Search Trees

# A binary tree is a tree in which each node has zero, one, or two children
# A binary SEARCH tree is a binary tree that also abides by this rule:
    # Each node's "left" descendants must contain values that are less than the node itself, and each node's "right" decendants must contain values that are greater than the node itself.

class TreeNode
  attr_accessor :value, :left_child, :right_child

  def initialize(val, left=nil, right=nil)
    @value = val
    @left_child = left
    @right_child = right
  end

  def search(searchValue, node)
    if !node || node.value == searchValue
      return node
    elsif searchValue < node.value
      return search(searchValue, node.leftChild)
    else
      return search(searchValue, node.rightChild)
    end
  end

  def insert(value, node)
    if value < node.value
      if !node.leftChild
        node.leftChild = node
      else
        insert(value, node.leftChild)
      end
    elsif value > node.value
      if !node.rightChild
        node.rightChild = node
      else
        insert(value, node.rightChild)
      end
    end
  end

  def delete(valueToDelete, node)
    if !node
      return nil
    elsif valueToDoelet < node.value
      node.leftChild = delete(valueToDelete, node.leftChild)
      return node
    elsif valueToDelete > node.value
      node.rightChild = delete(valueToDelete, node.rightChild)
      return node
    elsif valueToDelete == node.value
      if !node.leftChild
        return node.rightChild
      elsif !node.rightChild
        reutrn node.leftChild
      else
        node.rightChild = lift(node.rightChold, node)
        return node
      end
    end
  end

  def lift(node, nodeToDelete)
    if node.leftChild
      node.leftChild = lift(node.leftChild, nodeToDelete)
      return node
    else 
      nodeToDelete.value = node.value
      return node.rightChild
    end
  end
end

node = TreeNode.new(1)
node2 = TreeNode.new(10)
root = TreeNode.new(5, node, node2)

p root.left_child.value

# In a binary search tree, when you are searching, each step eliminates half of the remaining nodes from the search. Searching a binary search tree is O(log N), which is the apt description for any algorithm that eliminates half of the remining values with each step.

# If there are N nodes in a balanced binary tree, there will be about log N levels (that is, rows)

# While ordered arrays have O(log N) search and O(N) insertion, binary search trees have O(log N) search and O(log N) insertion. This becomes critical in an application where you anticipate a lot of changes to your data.

# Deletion
# If the node being deleted has no children, simply delete it.
# If the node being deleted has one child, delete it and plug the child into the spot where the deleted node was.
# If the node being deleted has two children, replace the node with the successor node. The successor node is the child node whose value is the least of all values that are greater than the deleted node.

# How does the computer find the successor value?
# Visit the right child of the deleted avlue, and then keep on visiting the left child of each subsequent child until there are no more left children. The bottom value is the successor node.

# If the successor node has a right child, after plugging the successor into the spot of the deleted node, take the right child of the successor node and turn it into the left child of the parent of the successor node.

# Pulling all the steps together, the algorithm for deletion from a binary search tree is:
# 1) If the node being deleted has no children, simply delete it.
#2) If the node being deleted has one child, delete it and plug the child into the spot where the deleted node was.
#3) When deleting a node with two cildren, replace the deleted node with the successor node. The successor node is the child node whose value is the least of all values that are greater than the delted node. (To find the successor node: visit the right child of the deleted value, and then keep on visiting the left child of each subsequent child until there are no more left children. The bottom value is the succesor node.)
#4) If the successor node has a right child, after lugging the successor node into the spot of the deleted node, take the right child of the successor node and turn it into the left child of the parent of the successor node.

# Binary Search Trees in Action

# Binary search trees boast efficiences of O(log N) for search, insertion, and deletion, making it an efficient choice for scenarios in which we need to store and manipulate ordered data. This is particularly true if we will be modifying the data often, because while ordered arrays are just as fast as binary search trees when searching data, binary search trees are significatly faster when it comse to inserting and deleting data.

# The binary search tree is a powerful node-based data structure that provides order maintenance, while also offering fast search, insertion, and deletion. 