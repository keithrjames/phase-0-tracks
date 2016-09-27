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

class Skateboard
  def initialize
    puts "Cool skateboard instance!"
  end
  def ollie(feet_int)
    puts "Woahhhhh! You ollied #{feet_int} feet high!"
  end
  def crash
    puts ".........."
    puts ".........."
    puts "SPLAT!"
  end
  def store_n_loop(int)
  counter = 0
  class_store = []
  while counter < int
    Skateboard.new
    class_store << Skateboard.new
    counter += 1
  end
  puts class_store.count
  class_store.each do |instance|
    instance.ollie(6)
    instance.crash
  end
  end
end



#####DRIVER CODE######
boxer = Puppy.new
boxer.fetch("bike")
boxer.speak(5)
boxer.roll_over
boxer.dog_years(4)
boxer.broken_dog

hawk = Skateboard.new
hawk.ollie(6)
hawk.crash
hawk.store_n_loop(5)