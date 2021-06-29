# Practice Problem 8

# What happens when we modify an array 
# while we are iterating over it? What would be output by this code?



numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# output: 1, 3 

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# output: 1, 2