#LIAISON AVEC LE GAME
$:.unshift File.expand_path("../", __FILE__)
require 'game'

class Application

    def initialize
    puts "Bienvenue dans notre jeu"

    puts "Utilisateur 1"
    puts "Renseignez votre Pseudo"
    puts ">>"
    pseudo1=gets.chomp


    puts "Utilisateur 2"
    puts "Renseignez votre Pseudo"
    puts ">>"
    pseudo2=gets.chomp

    game1=Game.new(pseudo1, pseudo2)
    puts "Bienvenue #{pseudo1} et #{pseudo2}. Notre partie peut commencer"
    end

end
