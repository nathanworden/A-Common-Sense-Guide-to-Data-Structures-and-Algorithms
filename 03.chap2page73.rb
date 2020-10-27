# A Ruby implementation of linear search on an ordered array:

def linear_search(array, search_value)
  array.each_with_index do |element, index|
    if element == search_value
      return index
    elsif element > search_value
      break
    end
  end
end

arr = [3, 17, 75, 80, 202]
p linear_search(arr, 22)