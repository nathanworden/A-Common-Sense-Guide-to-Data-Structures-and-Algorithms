# Quicksort is an extremely fast sorting algorithm that is particularly efficient for average scenarios. While in the worst-case scenarios (that, inversly sorted arrays), it performs similarly to Insertion Sort and Selection Sort, it is much faster for average scenarios, which are what occur most of the time.

# Quicksort relies on a concept called partitioning

# Partitioning

# To partition an array is to take a random value from the array- which is then called the pivot- and make sure that every number that is less than the pivot ends up to the left of the pivot, and every number that is greater than the pivot ends up to the right of the pivot.

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

      if left_pointer >= right_pointer
        break
      else
        @array[left_pointer], @array[right_pointer] = @array[right_pointer], @array[left_pointer]

        left_pointer += 1
      end
    end

    @array[left_pointer], @array[pivot_index] = @array[pivot_index], @array[left_pointer]

    return left_pointer
  end
end