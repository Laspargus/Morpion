#LIAISON AVEC LE GAME
$:.unshift File.expand_path("../", __FILE__)
require 'game'
#require 'player'

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

        @game = Game.new(pseudo1, pseudo2)
        puts "Bienvenue #{pseudo1} et #{pseudo2}. Notre partie peut commencer"
    end



    def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.

        #while true

          #on affiche le menu
          puts "C'est à toi de jouer player1"
          puts "Choisis ta case, MotherFucker"
          puts "A1, A2, A3, B1, B2, B3, C1, C2, C3"

          case_choice = gets.chomp #on attend le choix de l'utilisateur

          @game.move_player1(case_choice)


        #end
    end



end
