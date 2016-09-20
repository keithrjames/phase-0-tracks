# # Program must be able to recieve from the user:
#  - Name (string)
#  - Age (int)
#  - Number of children (int)
#  - decor theme (string)
#  - favorite colors (array)
#  - Human (bool)

#  PROGRAM MUST:
#  - be able to grab this information from the user
#  - convert to value data type
#  - print out the hash
#  - allow for updates
#  - print latest version for hash

def update_hash
  colors = []
  puts "Please enter your name"
  name = gets.chomp
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "How many children do you have?"
  children = gets.chomp.to_i
  puts "What is your desired decor theme?"
  theme = gets.chomp
  puts "What are your favorite colors? Type 'done' when finished."
  loop do
    input = gets.chomp
    break if input == "done"
    colors << input
  end
  puts "Are you a human? (y/n)"
  human = gets.chomp
  if human == "y"
    human = true
  else
    human = false
  end

  client = {}
  client[:name] = name
  client[:age] = age
  client[:children] = children
  client[:theme] = theme
  client[:colors] = colors
  client[:human] = human

  puts client

  puts "Would you like to update any of your selections? (please type name, age, children, theme, colors, human, or none)"
  update = gets.chomp.downcase
  if update == "none"
    puts "Thank you!"
  elsif client[update.to_sym] == client[:name]
    puts "provide new value"
    client[:name] = gets.chomp
  elsif client[update.to_sym] == client[:age]
    puts "provide new value"
    client[:age] = gets.chomp.to_i
  elsif client[update.to_sym] == client[:children]
    puts "provide new value"
    client[:children] = gets.chomp.to_i
  elsif client[update.to_sym] == client[:theme]
    puts "provide new value"
    client[:theme] = gets.chomp
  elsif client[update.to_sym] == client[:colors]
    puts "What are your favorite colors? Type 'done' when finished."
     loop do
      input = gets.chomp
      break if input == "done"
      colors << input
     end
  elsif client[update.to_sym] == client[:human]
    puts "Are you a human? (y/n)"
    human = gets.chomp
    if human == "y"
    human = true
    else
    human = false
    end
  else
    puts "Incorrect input"
  end
puts "***************************"
puts client
end

#TEST SPOT

update_hash
