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
        @my_view=View.new(pseudo1, pseudo2)
        @board=Board.new
    end


    def move_player1 (choice_case)
        symbole_player1 = @player1.symbole
        @board.move_player1(choice_case, symbole_player1)
    end

    def move_player2 (choice_case)
        symbole_player2 = @player2.symbole
        @board.move_player2(choice_case, symbole_player2) 
    end

    def winner
        @board.winner
    end

    def your_turn
        @my_view.your_turn(@board.array)
    end

    def check_choice(choice_case)
        if @board.check_choice(choice_case) == false
            @my_view.check_choice
            return false

        else return true
            
        end
    end
end



