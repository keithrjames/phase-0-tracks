class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof!" * int
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years * 7
    puts dog_years
  end

  def broken_dog
    puts "Meow!"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

#####DRIVER CODE######

boxer = Puppy.new
boxer.fetch("bike")
boxer.speak(5)
boxer.roll_over
boxer.dog_years(4)
boxer.broken_dog