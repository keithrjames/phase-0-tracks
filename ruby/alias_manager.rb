# first I need to swap the name
# then I need to change the vowels to the next vowels


#so first I would get a name

def name_swap(name)
  name_store = name.split(' ')
  name_store.reverse!
  new_name = "#{name_store[0]} #{name_store[1]}"
end
# could I just go over each letter of the string and check it against an array of vowels
def vowel_shift(name)
  vowel = ["a","e","i","o","u"]
  consonants = ["b","c","d","f","g","h","j","k", "l","m","n","p","q","r","s","t","v","w","y","z"]
  almost_name = name_swap(name)
  puts almost_name
  almost_name_split = almost_name.split('')
  p almost_name_split
   closer_name = almost_name_split.map do |char|
    if vowel.include?(char)
      char = vowel[vowel.index(char) + 1]
    elsif consonants.include?(char)
      char = consonants[consonants.index(char) + 1]
    else
      char
    end
  end
  p closer_name
end

######Test Space ####
vowel_shift("keith james")

