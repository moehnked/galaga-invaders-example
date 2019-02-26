class CanShoot
	def muzzle_location
    	Vector.new(location.x, firing_point)
  	end

  	def prepare_missile
  		missile = Missile.new(self.muzzle_location)
    	missile.launch(-10)
    	missile
  	end
end