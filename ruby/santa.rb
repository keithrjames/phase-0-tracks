class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
  def initialize
    puts "Initalizing Santa instance..."
  end
end


#####Driver code#####

cris = Santa.new
cris.speak
cris.eat_milk_and_cookies("fudge")