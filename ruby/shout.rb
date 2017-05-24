# methods of standalone modules must be defined 
# on the self keyword

module Shout
	# def self.yell_angrily(words)
 #    words + "!!!" + " :("
	# end
	
 #    def self.yelling_happily(words)
 #    words + "(:"
 # 	end

 	def calling_over(phrase)
 		puts "Come and get #{phrase}"
 	end

 end

# p Shout.yell_angrily("Boohoo")
# p Shout.yelling_happily("Whoohoo")

class FootballFans
	include Shout
end

class IceCreamVendorOnTheBeach
	include Shout
end

footballfan = FootballFans.new
footballfan.calling_over("us! You won't be able to get past!")

icecreamvendor = IceCreamVendorOnTheBeach.new
icecreamvendor.calling_over("some cold ice cream!")