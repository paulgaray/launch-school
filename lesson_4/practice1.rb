# Practice Problem 1
# Turn this array into a hash
# where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flinstones_hash = Hash.new

flintstones.each_with_index do |item, index| 
	flinstones_hash[item] = index
end

p flinstones_hash
