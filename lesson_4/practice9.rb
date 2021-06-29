# Practice Problem 9
# OUTPUT: 
# words = "The Flintstones Rock"

words = "the flintstones rock"
words_array = words.split(/(\s)/) # ["the", " ", "flintstones", " ", "rock"]

words_array.map do |word|
  if word.scan(" ")
end