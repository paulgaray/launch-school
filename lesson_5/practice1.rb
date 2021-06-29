# Practice Problem 1
# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# Method 1
def convert_to_int(array)
  new_array = []
  array.map do |string|
    new_array << string.to_i
  end
  new_array
end

p convert_to_int(arr).sort {|n1, n2| n2 <=> n1}


# Method 2
new_array = []

arr.map do |string|
  new_array << string.to_i
end

p new_array.sort {|n1, n2| n2 <=> n1}

# Method 3 (Launch School answer key)
arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]