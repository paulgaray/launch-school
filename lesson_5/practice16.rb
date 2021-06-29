# Practice Problem 16
# Write a method that returns one UUID when called with no parameters.
# Each UUID consists of 32 hexadecimal characters, 
# and is typically broken into 5 sections 
# like this 8-4-4-4-12 and represented as a string.
# Output: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"


# My Solution
def uuid
  alphanumeric_array = [*'a'..'z', *'0'..'9']
  counter = 0
  uuid = []
  while counter < 32
    uuid.push(alphanumeric_array.sample)
    counter +=1
  end
  uuid_string = uuid.join
  uuid_string[7] += '-'
  uuid_string[12] += '-'
  uuid_string[17] += '-'
  uuid_string[22] += '-'
  uuid_string
end

p uuid


# Launch School Solution
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end