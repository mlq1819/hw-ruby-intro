# When done, submit this entire file to the autograder.

class NotAnIntegerError < ArgumentError ; end
class NotAStringError < ArgumentError ; end

# Part 1

def sum(array)
  sum = 0
  i = 0
  for i in 0..array.length-1 do
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
    for i in 2..arr.length-1 do
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
  for i in 0..arr.length-1 do
    begin
      raise NotAnIntegerError,
        'Expected argument must be scalar whole number' unless
        arr[i].is_a?(Integer)
      for j in i+1..arr.length-1 do
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
  begin
  raise NotAStringError,
    'Expected argument must be string' unless
    name.is_a?(String)
  return "Hello, #{name}"
  rescue NotAStringError => exception
    "#{exception.class}: #{exception.message}"
  end
end

def starts_with_consonant?(s)
  begin
  raise NotAStringError,
    'Expected argument must be string' unless
    s.is_a?(String)
  c = s.downcase[0,1]
  return c==='b' || c==='c' || c==='d' || c==='f' || c==='g' || c==='h' || c==='j' || c==='k' || c==='l' || c==='m' || c==='n' || c==='p' || c==='q' || c==='r' || c==='s' || c==='t' || c==='v' || c==='w' || c==='x' || c==='y' || c==='z'
  rescue NotAStringError => exception
    "#{exception.class}: #{exception.message}"
  end
end

def binary_multiple_of_4?(s)
  begin
  raise NotAStringError,
    'Expected argument must be string' unless
    s.is_a?(String)
  for i in 0..s.length-1 do
    if !(s[i,1] === '0') &&  !(s[i,1] === '1')
      return false
    end
  end
  if s.length > 0
    if s[s.length-1, 1] === '1'
      return false
    elsif s.length > 1
      if s[s.length-2, 1] === '1'
        return false
      end
    end
    return true
  else
    return false
  end
  rescue NotAStringError => exception
    "#{exception.class}: #{exception.message}"
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
