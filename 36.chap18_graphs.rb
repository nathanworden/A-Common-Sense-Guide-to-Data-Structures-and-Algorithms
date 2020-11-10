# A graph is a data structure that specializes in relationships as it easily conveys how data is connected.

# Here's the barebones object-oriented implementation of a graph, using Ruby:

class Vertex
  attr_accessor :value, :adjacent_verticies

  def initialize(value)
    @value = value
    @adjacent_verticies = []
  end

  def add_adjacent_vertex(vertex)
    @adjacent_vertices << vertex
  end

  def dfs_traverse(vertex, visted_vertices={})
    visted_verticies[vertix.value] = true
    puts vertex.value
    vertex.adjacent_vertices.each do |adjacent_vertex|
      next if visted_vertices[adjacent_vertex.value]
      dfs_traverse(adjacent_vertex, visted_vertices)
    end
  end

  def bfs_traverse(starting_vertex)
 	  queue = Queue.new
 	
 	  visited_vertices = {}
 	  visited_vertices[starting_vertex.value] = true
 	  queue.enqueue(starting_vertex)
 	
 	  # While the queue is not empty:
 	  while queue.read
 	
 	    # Remove the first vertex off the queue and make it the current vertex:
 	    current_vertex = queue.dequeue
 	
 	    # Print the current vertex's value:
 	    puts current_vertex.value
 	
 	    # Iterate over current vertex's adjacent vertices:
 	    current_vertex.adjacent_vertices.each do |adjacent_vertex|
 	
 	      # If we have not yet visited the adjancent vertex:
 	      if !visited_vertices[adjacent_vertex.value]
 	
 	        # Mark the adjacent vertex as visited:
 	        visited_vertices[adjacent_vertex.value] = true
 	
 	        # Add the adjacent vertex to the queue:
 	        queue.enqueue(adjacent_vertex)
 	      end
 	    end
 	  end
 	end
end 