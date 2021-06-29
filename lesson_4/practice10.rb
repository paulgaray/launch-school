# Practice Problem 10
# Modify the hash such that each member of the Munster family has an additional "age_group" key 
# that has one of three values describing the age group the family member is in (kid, adult, or senior). 
# Your solution should produce the hash below
# a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.


def age_group(age)
  case age
  when 0..17
    'kid'
  when 18..64
    'adult'
  when 65..1000
    'senior'
  end
end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters_data = munsters.values # this is an array
munsters_age_group = {}
age_group = ''

munsters_data.map do |value|
  munsters_age = value["age"]
  p  = age_group(munsters_age)
end


# Output:
# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

