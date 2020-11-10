def dijkstra_shortest_path(starting_city, final_destination)
  cheapest_price_table = {}
  cheapest_previous_stopover_city_table = {}
  unvisited_cities = []
  visited_cities = {}
  cheapest_prices_table[starting_city.name] = 0
  current_city = starting_city
  while current_city
    visted_cities[current_city.name] = true
    unvisted_cities.delete(current_city)
    current_city.routes.each do |adjacent_city, price|
      unvisted_cities << adjacent_city unless visted_cities[adjacent_city.name]
      price_through_current_city = cheapest_prices_table[current_city.name] + price
      if !cheapest_prices_table[adjacent_city.name] || price_through_current_city < cheapest_prices_table[adjacent_city.name]
        cheapest_prices_table[adjacent_city.name] = price_through_current_city
        cheapest_previous_stopover_city_table[adjacent_city.name] = current_city.name
      end
    end
    current_city = unvisted_cities.min {|city| cheapest_prices_table[city.name]}
  end
  shortest_path = []
  current_city_name = final_destination.name
  while current_city_name !- starting_city.name
    shortest_path << current_city_name
    current_city_name = cheapest_previous_stopover_city_table[current_city_name]
  end
  shortest_path << starting_city.name
  return shortest_path.reverse
end


