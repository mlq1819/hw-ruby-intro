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
  
  if arr.length < 2
    if arr.length == 0
      return 0
    else
      return arr[0]
    end
  else
    largest = arr[0]
    second_largest = arr[1]
    if second_largest > largest
      largest = arr[1]
      second_largest = arr[0]
    end
    for i in 2..arr.length do
      begin
        raise NotAnIntegerError,
          'Expected argument must be scalar whole number' unless
          arr[i].is_a?(Integer)
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
end

def sum_to_n?(arr, n)
  for i in 0..arr.length do
    begin
      raise NotAnIntegerError,
        'Expected argument must be scalar whole number' unless
        arr[i].is_a?(Integer)
      for j in i+1..arr.length do
        raise NotAnIntegerError,
          'Expected argument must be scalar whole number' unless
          arr[j].is_a?(Integer)
        if arr[i] + arr[j] == n
          return true
        end
      end
    rescue NotAnIntegerError => exception
      "#{exception.class}: #{exception.message}"
    end
  end
  return false
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
