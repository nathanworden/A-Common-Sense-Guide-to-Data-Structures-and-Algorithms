# Heaps

# A heap is a type of tree data structure that is ueseful when we want to constantly keep tabs on the greatest or least data element in a dataset

# Different data structure: Priority Queue

# The queue is a list in which items are processed First In, First Out.

# A priority queue is a list whose deletions and access are just like a classic queue, but whose insertions are like an ordered array.

# One way we can implement a priority queue is by using a simple ordered array. That is, we use an array, and aply the following constraints:
# - When we insert data, we always ensure that we maintain proper order.
# - Data can only be deleted from the end of the array

# The priorty queue has two primary operations: deletions and insertions.


##### HEAPS  ###

# There are several different types of heaps, but we're going to focus on the binary heap.

# The binary heap is a specific kind of binary tree.

# The binary max-heap is a binary tree that maintains the following conditions:

# - The value of each node must be greater than each of its descendant nodes. This condition is known as the heap condition.
# - The tree must be complete

# The value of each node must be greater than each of its descendant nodes:

# A complete tree is a tree in which if you read each level of the tree from left to rgith, its all filled with nodes. However, the bottom row can have empty positions as long as there aren't any nodes to the right of these empty positions.

# Heaps are weakly orderd. While heaps have some order, as descendants cannot be greater than their ancestors, this isn't enough order to make heaps worth searching through.

# In a heap, the root node will always be the greatest node. This is the key as to why the heap is the perfect tool for implementing priority queues. In the priority queue, we alsways want to access the value with the greatest priority.

# Search is not an operation usually implemented in the context of heaps.

# If a read operation is added to a heap, it is just to access the root node, which is fairly trivial.

## Heap Insertion ############################################

# To insert a new value into the heap, we follow the following algorithm:
#1) We first make the new value into the heap's last node. This would be the next available rightmost spot in the bottom level
#2) Next, we compare the new node with its parent node.
#3) If the new node is greater than its parent node, we swap the new node with the parent node.
#4) We reapt step #3, effectivley moving the new node up throug the heap, until it has a parent whose value is greater than it.

# The efficiency of inserting into a heap is O(log N). 


###### HEAP DELETION

# The algorithm for deleting the root node of a heap is as follows:
#1) Move the last node into where the root node was, effectively removing the original root node.
#2) Trickle the root node down into its propert place.

# Trickling down is a tad more complex than trickling up, since each time we trickle a node down, we have two possible directions as to where we'll trickle it down to. That is, we can either swap it with its left child or right child. Here is the algorithm for trickling down:

#1) We check both children of the trickle node and see which one is larger.
#2) IF the trickle node is smaller than the larger child node, we swap the trickle node with the larger child.
#3) We repeat steps 1 and 2 until the trickle node has no children who are greater than it.