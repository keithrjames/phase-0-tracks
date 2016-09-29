module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end


####Driver Code####

#puts require_relative 'shout'
puts Shout.singleton_methods
puts Shout.yell_angrily("I love you")
puts Shout.yelling_happily("I love you")