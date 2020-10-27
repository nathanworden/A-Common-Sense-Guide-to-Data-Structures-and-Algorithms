def printNumbersCersionOne
  number = 2

  while number <= 100
    if number % 2 == 0
      puts number
    end
    number += 1
  end
end

def printNumbersVersionTwo
  number = 2

  while number <= 100
    puts number
    number += 2
  end
end

printNumbersCersionOne

puts 

printNumbersVersionTwo
