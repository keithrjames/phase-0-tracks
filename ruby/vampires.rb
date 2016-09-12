puts "How many people will be taking this survey?"
n = gets.chomp.to_i
survey = 0
until survey == n

puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "Our cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlic_bread = gets.chomp
puts "Would you like to enroll in our health insurance program ? (Y/N)"
insurance = gets.chomp

if name == "Drac Cula"
  vampire_name = true
elsif name == "Tu Fang"
  vampire_name = true
else
  vampire_name = false
end

if age != 2016 - birth_year
  vampire_age = true
else
  vampire_age = false
end

if garlic_bread == "N"
  vampire_food = true
else
  vampire_food = false
end

if insurance == "N"
  vampire_health = true
else
  vampire_health = false
end


if !((vampire_food || vampire_health) && vampire_age)
    vampire_result = "Probably not a vampire."
else
    "Results inconclusive."
end

if vampire_age && (vampire_food || vampire_health)
    vampire_result = "Probably a vampire."
  elsif !((vampire_food || vampire_health) && vampire_age)
    vampire_result = "Probably not a vampire."
  else
    "Results inconclusive."
end

if vampire_age && vampire_food && vampire_health
    vampire_result = "Almost certainly a vampire."
  elsif vampire_age && (vampire_food || vampire_health)
    vampire_result = "Probably a vampire."
  elsif !((vampire_food || vampire_health) && vampire_age)
    vampire_result = "Probably not a vampire."
  else
    "Results inconclusive."
end

if vampire_name == true
    vampire_result = "Definitly a vampire."
  elsif vampire_age && vampire_food && vampire_health
    vampire_result = "Almost certainly a vampire."
   elsif vampire_age && (vampire_food || vampire_health)
    vampire_result = "Probably a vampire."
  elsif !((vampire_food || vampire_health) && vampire_age)
    vampire_result = "Probably not a vampire."
  else
    vampire_result = "Results inconclusive."
end

vampire_allergy = "sunshine"

puts "Do you have any allergies? Name all of them. Type Done when finished."

allergy = ""

until allergy == "Done"
  allergy = gets.chomp
  if allergy == vampire_allergy
    vampire_result = "Probably a vampire."
    break
  end
end

puts vampire_result

survey = survey + 1

end
