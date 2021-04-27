class Player
	attr_accessor :name, :life_points

	def initialize (name)
		@name = name
		@life_points = 10
	end
	
	def show_state
		puts "#{name} has #{life_points} points de vie"
	end
	
	def gets_damage (amount)
		@life_points -= amount
		if @life_points < 1 then 
			puts "Player #{name} has been killed !"
		end
	end
	def attacks (player)
		puts "Player #{name} attacks player #{player.name}" 
		dmg = compute_damage
		puts "He deals #{dmg} damage points"
		player.gets_damage(dmg) #Ne pas mettre de chiffre
	end
	#¿WHY? generate randomly the damage dealt
	def compute_damage
    	return rand(1..6)
  	end
end



