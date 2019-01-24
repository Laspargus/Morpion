class View

	def initialize(player1, player2)

		    puts "#{player1} a le symbole x"
	        puts "#{player2} a le symbole o"
	      
	end

	def display_choice(params_move_player)
		puts "la case #{params_move_player.position} prend la valeur #{params_move_player.symbole}"
	end

	
end
