# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.




hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'

hsh.each do |key, value|
  value.select do |array|
    array.each_char do |c|
      p c if vowels.include?(c)
    end
  end
end