# Implement a Linter using a Stack

class Stack
  def initialze
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end

class Linter 
  attr_reader :error

  def initialize
    @stack = Stack.new
  end

  def lint(text)
    text.each_char.with_index do |char, index|
      if is_opening_brace?(char)
        @stack.push(char)
      elsif is_closing_brace?(char)
        if closes_most_recent_opening_brace?(char)
          @stack.pop
        else
          @error = "Incorrect closing brace: #{char} at index #{index}"
          return
        end
      end
    end
    if @stack.read
      @error = "#{@stack.read} does not have a closing brace"
    end
  end

  private

  def id_opening_brace?(cahr)
    ["(", "[", "{"].include?(char)
  end

  def is_closing_brace?(char)
    [")", "]", "}"]
  end

  def opening_brace_of(char)
    {")" => "(", "]" => "[", "}" => "{"}[char]
  end

  def most_recent_opening_brace
    @stack.read
  end

  def closes_most_recent_opening_brace?(char)
    opening_brace_of(char) == most_recent_opening_brace
  end
end

linter = Linter.new
linter.lint("( var x = { y: [1, 2, 3] } )")
puts linter.error

linter2 = Linter.new
linter.lint("( var x = { y: [1, 2, 3] ) }")