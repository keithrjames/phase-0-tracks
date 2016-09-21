# first I need to swap the name
# then I need to change the vowels to the next vowels or cons to next cons
# then I would need to store each result in a database
# then I would need to print each result when the user was finished.

def name_swap(name)
  name_store = name.downcase.split(' ')
  swap_name = name_store.reverse!
  new_name = "#{swap_name[0]} #{swap_name[1]}"
end

def vowel_shift(name)
  vowel = ["a","e","i","o","u"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  almost_name = name_swap(name)
  almost_name_split = almost_name.split('')
   closer_name = almost_name_split.map do |char|
    if vowel.include?(char) && char == vowel[4]
      char = vowel[0]
    elsif consonants.include?(char) && char == consonants[20]
      char = consonants[0]
    elsif vowel.include?(char)
      char = vowel[vowel.index(char) + 1]
    elsif consonants.include?(char)
      char = consonants[consonants.index(char) + 1]
    else
      char
    end
  end
  final_name = closer_name.join("")
  return "Secret Agent #{name}, your code name is #{final_name}!"
end

def user_interface
  puts "Welcome to the secret agent portal. Please enter the names of your secret agent team. When finished, please type 'quit'"
  secret_database = []
  loop do
    name = gets.chomp
    break if name == "quit"
    vowel_shift(name)
    secret_database.push(vowel_shift(name))
  end
  secret_database.each do |secret_name|
    puts secret_name
  end
end



######Test Space ####
user_interface

