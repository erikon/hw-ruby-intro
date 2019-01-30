# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  if arr.length == 0
    return 0
  end
  for i in arr
    s += i
  end
  return s
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end

  max1 = arr.max
  arr.delete_at(arr.index max1)
  max2 = arr.max

  return max1 + max2

end

def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1
    return false
  end
  len = arr.length
  for i in (0..len-1)
    for j in (i+1..len-1)
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end

  str = s.downcase
  vowels = ['a', 'e', 'i', 'o', 'u']
  first_letter = str[0]
  acsii_val = first_letter.ord
  if !vowels.include? first_letter and (acsii_val >= 97 and acsii_val <= 122)
    return true
  end

  return false

end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  for i in 0..s.length-1
    c = s[i]
    if c != "0" and c != "1"
      return false
    end
  end

  decimal = s.to_i(2)
  if decimal % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if price <= 0 or isbn == ''
      raise ArgumentError, 'Book not valid'
    end
    @isbn = isbn
    @price = price
  end

  def isbn #getter method
    @isbn
  end

  def price #getter method
    @price
  end

  def isbn=(isbn) #setter method
    @isbn = isbn
  end

  def price=(price) #setter method
    @price = price
  end

  def price_as_string
    return "$%.2f" % @price
  end

end
