#LIAISON AVEC LE GAME
$:.unshift File.expand_path("../", __FILE__)
require 'player'
require 'board'
require 'boardcase'
require 'view'

class Game


    def initialize (pseudo1, pseudo2)
        @player1=Player.new(pseudo1,"x")
        @player2=Player.new(pseudo2, "o")

    # On va afficher dans la view nos pseudos et symboles
        @my_view=View.new(pseudo1, pseudo2)

        @board=Board.new

    end


    def move_player1 (choice_case)

        symbole_player1 = @player1.symbole

        @board.move_player1(choice_case, symbole_player1)

    end

end



