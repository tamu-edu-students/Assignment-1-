# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  else
    return(arr.sum)
  end
  
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    arr = arr.sort
    arr = arr.reverse
    return(arr[0]+arr[1])
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr = arr.sort 
  # two pointer
  left = 0
  right = arr.size-1
  while left < right
    add = arr[left] + arr[right]
    if add < number
      left += 1
    elsif add > number
      right -= 1
    else
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + String.new(name)
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  return string =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length == 0 || string.match(/[^ 01]/)
    return false
  end
  num = string.to_i(2)
  if num % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    raise ArgumentError if isbn == "" || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$" + format("%.2f",@price)
  end
  
end
