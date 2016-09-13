puts "What is the hamsters name?"
name = gets.chomp
puts "Enter your hamsters volume level (1-10)"
volume = gets.chomp.to_f
puts "What is your hamsters fur color?"
fur_color = gets.chomp
puts "Is this hamster a good candidate for adoption? (y/n)"
  adoption = gets.chomp.downcase
  if adoption[0] == "y"
    adoption = true
  else
    adoption = false
  end
puts "What is the estimated age for your hamster?"
est_age = gets.chomp.to_i
if est_age == "".to_i
  est_age = nil
end
if adoption == true
  candidate = "good"
else
  candidate = "bad"
end
if est_age == nil
  est_age = "unknown"
end
puts "Your hamster, #{name}, is a #{fur_color} hamster who is #{volume} decibels
  loud. He is #{est_age} years old and is a #{candidate} candidate for adoption!"
