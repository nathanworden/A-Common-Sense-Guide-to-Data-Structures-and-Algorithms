# Quicksort is an extremely fast sorting algorithm that is particularly efficient for average scenarios. While in worst case scenarios (that is, invesrsly sorted arrays), it performs similarly to Insertion Sort and Selection Sort, it is much faster for average scenarios- which are what occur most of the time.

# Quicksort relies on a concept called partitioning.

# To partition an array is to take a random value from the array, which is called the pivot, and make sure that every number that is less than the pivot ends up to the left of the pivot, and every number that is greater than the pivot ends up to the right of the pivot.

# Paritioning:

# Let's say we have the following array:

# [0, 5, 2, 1, 6, 3]

# For consistency's sake, we'll always select the right most value to be our pivit (although we can technically choose other values). IN this case, the number 3 is our pivot.

# We then assign pointers, one to the left most value of the array, and one to the right-most value of the array, excluding the pivot itself.

# Steps:

#1) The left pointer continuously moves one cell to the right until it reaches a value that is greater than or equal to the pivot and then stops.

#2) Then, the right pointer continuously moes one cell to the left until it reaches a value that is less than or equal to the pivot, and then stops. The right pointer will also stop if it reaches the beginning of the array.

#3) Once the right pointer has stopped, we reach a crossroads. If the left pointer has reached (or gone beuyond) the right pointer, we move on to step#4. OTherwise, we swap the values that the left and right pointers are pointing to, and then go back to repeat steps 1, 2, and 3 again.

#4) Finally, we swap the pivot with the value that the left pinter is currently pointint to.


# [0, 5, 2, 1, 6, 3]

class SortableArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def partition!(left_pointer, right_pointer)
    pivot_index = right_pointer
    pivot = @array[pivot_index]
    right_pointer -= 1
    while true
      while @array[left_pointer] < pivot do
        left_pointer += 1
      end

      while @array[right_pointer] > pivot do
        right_pointer -= 1
      end
    end
  end
end