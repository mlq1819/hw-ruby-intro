# When done, submit this entire file to the autograder.

class NotAnIntegerError < ArgumentError ; end

# Part 1

def sum(array)
  sum = 0
  i = 0
  for i in 0..array.length do
    begin
      raise NotAnIntegerError,
        'Expected argument must be scalar whole number' unless
        array[i].is_a?(Integer)
      sum = sum + array[i]
    rescue NotAnIntegerError => exception
      "#{exception.class}: #{exception.message}"
    end
  end
  return sum
end

def max_2_sum(arr)
  largest = 0
  second_largest = 0
  for i in 0..arr.length do
    begin
      raise NotAnIntegerError,
        'Expected argument must be scalar whole number' unless
        array[i].is_a?(Integer)
      if arr[i] > largest
        second_largest = largest
        largest = arr[i]
      elsif arr[i] > second_largest
        second_largest = arr[i]
      end
      rescue NotAnIntegerError => exception
      "#{exception.class}: #{exception.message}"
    end
  end
  return largest + second_largest
end

def sum_to_n(arr, n)
  x = 0
  until x = arr.length || arr[x]=n
   x = x+1
  end
  if x < arr.length
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
