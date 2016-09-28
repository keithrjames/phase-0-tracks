class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
  def initialize(gender, ethnicity, name)
    puts "Initalizing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @name = name
  end
  def doris_is_old
    if @name == "Doris"
      @age = 99
      puts "Doris, you are fooling no one. Get out of that stroller."
    end
  end
end


#####Driver code#####

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_names = ["Ken", "Keith", "Samantha", "Doris", "Bobby", "Ashley", "Goober" ]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], example_names[i])
end

puts santas

santas.each do |santa|
  puts santa.doris_is_old
end

# cris = Santa.new
# cris.speak
# cris.eat_milk_and_cookies("fudge")