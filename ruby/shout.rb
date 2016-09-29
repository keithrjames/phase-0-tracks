module Shout
  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end
  # def self.yelling_happily(words)
  #   words + "!!!" + " :)"
  # end

  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Dad
  include Shout
end

class Coach
  include Shout
end



####Driver Code####

#puts require_relative 'shout'
# puts Shout.singleton_methods
# puts Shout.yell_angrily("I love you")
# puts Shout.yelling_happily("I love you")

dad = Dad.new
puts dad.yell_angrily("I love you")
puts dad.yelling_happily("I love you")

coach = Coach.new
puts coach.yell_angrily("I love you")
puts coach.yelling_happily("I love you")