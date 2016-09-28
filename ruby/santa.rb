class Santa
  attr_accessor :name, :gender, :ethnicity, :age
  # Instance Methods
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
  def celebrate_birthday
    @age += 1
  end
  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(-1,@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
    puts @reindeer_ranking
  end

end


#####Driver code#####

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_names = ["Ken", "Keith", "Samantha", "Doris", "Bobby", "Ashley", "Goober" ]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i], example_names[i])
# end

# puts santas

# santas.each do |santa|
#   puts santa.doris_is_old
# end

cris = Santa.new("Man", "White", "Keith")
cris.speak
cris.eat_milk_and_cookies("fudge")
puts cris.celebrate_birthday
puts cris.get_mad_at("Comet")
cris.gender = "Bone Doggy"
puts "my name gender is #{cris.gender}"