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

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_names = ["Ken", "Keith", "Samantha", "Doris", "Bobby", "Ashley", "Goober" ]


#####Driver code#####

puts "Welcome to the Santa Generator

....

....

....

How many santas would you like to create?"

santas_desired = gets.chomp.to_i

counter = 0

while counter < santas_desired
  test_santa = Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)], example_names[rand(example_names.length)])
  puts test_santa.age = rand(0..140)
  puts test_santa.gender
  puts test_santa.ethnicity
  puts test_santa.name

  # Running doris_is_old...should change all ages of santas named "Doris to 99."

  test_santa.doris_is_old
  puts test_santa.age

  counter += 1
end


puts "...
...
Winter is coming."