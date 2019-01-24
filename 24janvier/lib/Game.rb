#LIAISON AVEC LE GAME
$:.unshift File.expand_path("../", __FILE__)
require 'player'

class Game

    def initialize (pseudo1, pseudo2)
        player1=Player.new(pseudo1,"x")
        puts "#{player1} a le symbole x"
        puts player1.pseudo
        puts player1.symbole

        player2=Player.new(pseudo2, "o")
        puts "#{player2} a le symbole o"
        puts player2.pseudo
        puts player2.symbole
    end

end



