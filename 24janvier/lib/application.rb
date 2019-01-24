#LIAISON AVEC LE GAME
$:.unshift File.expand_path("../", __FILE__)
require 'game'
#require 'player'

class Application 
attr_accessor :pseudo1, :pseudo2

    def initialize
        puts "Bienvenue dans notre jeu"

        puts "Utilisateur 1"
        puts "Renseignez votre Pseudo"
        puts ">>"
        @pseudo1=gets.chomp


        puts "Utilisateur 2"
        puts "Renseignez votre Pseudo"
        puts ">>"
        @pseudo2=gets.chomp

        @game = Game.new(@pseudo1, @pseudo2)
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Bienvenue #{@pseudo1} et #{@pseudo2}. Notre partie peut commencer"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end



    def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.

        #while true

          #on affiche le menu
          puts "C'est à toi de jouer #{@pseudo1}"
          puts "Choisis ta case : "
          puts "a1, a2, a3, b1, b2, b3, c1, c2, c3"
          puts ">>"

          case_choice = gets.chomp #on attend le choix de l'utilisateur
          @game.move_player1(case_choice)

          puts "C'est à toi de jouer #{@pseudo2}"
          puts "Choisis ta case : "
          puts "a1, a2, a3, b1, b2, b3, c1, c2, c3"
          puts ">>"

          case_choice = gets.chomp #on attend le choix de l'utilisateur
          @game.move_player2(case_choice)


        #end
    end



end
