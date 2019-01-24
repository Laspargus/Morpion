class View

	def initialize(player1, player2)
		puts "#{player1} a le symbole x"
	    puts "#{player2} a le symbole o"     
	end



	def your_turn(array)
		puts "|#{array[0].symbole}|#{array[1].symbole}|#{array[2].symbole}|"
		puts "-" * 7
		puts "|#{array[3].symbole}|#{array[4].symbole}|#{array[5].symbole}"
		puts "-" * 7
		puts "|#{array[6].symbole}|#{array[7].symbole}|#{array[8].symbole}|"
		puts ">>"
	end

end
