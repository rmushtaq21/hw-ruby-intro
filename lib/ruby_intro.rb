# When done, submit this entire file to the autograder.
# Part 1
def sum arr
  if arr.empty?
    return 0
  else
    return arr.sum
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length === 1
    return arr[0]
  else
    largest_val = arr.max
    largest_index = arr.index(largest_val) 
    arr.delete_at(largest_index)
    second_largest = arr.max
    return largest_val + second_largest
  end
end

def sum_to_n? arr, n
  if arr.empty? || arr.length === 1
    return false
  end

  arr.each_index { |i|
    current_val = arr[i]
    j = i+1
    next_val = arr[j]
    
    # if current value is the last element in the array
    # return false
    if i === arr.length - 1
      return false
    elsif current_val + next_val === n
      return true
    else
      j + 1
    end 
  }
end


# Part 2
def hello(name)
  return "Hello, " << name
end

def starts_with_consonant? s
  if /^[b-df-hj-np-tv-z]/i.match(s)
    return true 
  end
end

def binary_multiple_of_4? s
  if /^01/.match(s)
    return false
  end
end


# Part 3
class BookInStock
  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price   

    if @isbn === '' || 0 >= price
      raise ArgumentError
    end
  end

  def price_as_string
    if @price.is_a? Integer
      return "$#{@price}.00"
    end

    str_price = @price.to_s.split('.')

    if str_price[1].length === 2
      return "$#{str_price[0]}.#{str_price[1]}"
    elsif str_price[1].length === 1
      return "$#{str_price[0]}.#{str_price[1]}0"
    end
  end
end
