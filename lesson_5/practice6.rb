# Practice Problem 5
# Print out the name, age and gender of each family member
# Output: (Name) is a (age)-year-old (male or female).

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
  }


munsters["Herman"]["age"]

  munsters.each do |name, details|
    p "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
  end
