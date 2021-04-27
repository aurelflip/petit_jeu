require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

class Player
	def initialize (player)
		@player = player
	end
	def player
		@player
	end
	def show_state
		puts "#{name} has #{life_points} points de vie"
	end
end


player1= Player.new('Josiane')
player2=Player.new('José')
puts "Voici l'état de chaque joueur :"
puts "#{player1} a #{life_points} points de vie"
puts "#{player2} a #{life_points} points de vie"
puts "Passons à la phase d'attaque :"

binding.pry