# Practice Problem 5
# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.find_index {|string| string.start_with?('Be')}