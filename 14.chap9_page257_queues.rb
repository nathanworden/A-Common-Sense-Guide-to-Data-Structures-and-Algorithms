# Queues

# A Queue is another data structure designed to process temporary data. It's like a stack in many ways, except that it processes data in a different order.

# You can think of a queue as a line of people at the movie theater. The first one in the line is the first one to leave the line and enter the theater. 

# With queues, the first item added to the queue is the first item to be removed.

# Queues are arrays with three restrictions:

#1) Data can be inserted only at the end of the queue.
#2) Data can be deleted only from the front of a queue
#3) Only the element at the front of a queue can be read

# QUEUE IMPLEMENTATION

class Queue
  def initialize
    @data << element
  end

  def enqueue(element)
    @data << element
  end

  def dequeue
    @data.shift
  end

  def read
    @data.first
  end
end

# 1) queue
# 2) 4
# 3) 3
# 4) Write a function that uses a stack to reverse a string 