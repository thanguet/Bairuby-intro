# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  if arr.empty?
    return 0
  end
  if arr.length ==1 
    return arr[0]
  end
  arr.each do |a|
    sum+=a
  end
  return sum
  # YOUR CODE HERE
end

def max_2_sum arr
 sum arr.sort.pop(2)
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  arr.combination(2).each {|a| return true if (a[0]+a[1] == n)}
  false
  # YOUR CODE HERE
end

# Part 2

def hello(name)
   "Hello, #{name}"
  # YOUR CODE HERE
end

def starts_with_consonant? s
  s=~ /^[a-z&&[^aeiou]]/i
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  return false unless s =~ /^[01]+$/ 
    s.to_i(2) %4 == 0
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
      "$#{sprintf("%.2f",@price)}"
  end
# YOUR CODE HERE
end
