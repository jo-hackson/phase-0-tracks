# methods of standalone modules must be defined 
# on the self keyword

module Shout
	def self.yell_angrily(words)
    words + "!!!" + " :("
	end
	
    def self.yelling_happily(words)
    words + "(:"
 	end
 end

p Shout.yell_angrily("Boohoo")
p Shout.yelling_happily("Whoohoo")