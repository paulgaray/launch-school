# Practice Problem 7
# Given this code, what would be the final values of a and b

a = 2
b = [5, 8]
arr = [a, b]


arr[0] += 2
arr[1][0] -= a 

a # => 2
b # => [3, 8]

# The value of a didn't change because we are not referencing a at any point.

# The value of b did change because b is an array and we are modifying that array by assigning a new value at index 0 of that array.




