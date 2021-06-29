# Practice Problem 3
# In the age hash, remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject! do |key, value|
  value >= 100
end

# using reject! mutates the original hash