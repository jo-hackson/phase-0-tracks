# module goes before class
# do not use self when module is a mixin
# write the same way as an instance method inside class

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
	include flight
end

class Plane
	include flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)