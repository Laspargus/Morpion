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


        @free_cases = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
    end



    def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.

       while true

          #on affiche le menu
          puts "C'est à toi de jouer #{@pseudo1}"
          puts "Choisis ta case : "
          puts "a1, a2, a3, b1, b2, b3, c1, c2, c3"
    
    puts "|#{@free_cases[0]}|#{@free_cases[1]}|#{@free_cases[2]}|"
    puts "-" * 7
    puts "|#{@free_cases[3]}|#{@free_cases[4]}|#{@free_cases[5]}|"
    puts "-" * 7
    puts "|#{@free_cases[6]}|#{@free_cases[7]}|#{@free_cases[8]}|"


          puts ">>"

          case_choice = gets.chomp #on attend le choix de l'utilisateur
          @game.move_player1(case_choice)

          # on décrémente les choix possibles
          @free_cases.map!{ |x| 
            if x == case_choice 
                 x = "  "
            else x
            end
            }

          # Méthode winner

            winner = @game.winner

            if winner == true then 
                puts "Vous avez gagné player_1"
            break
            end


          puts "C'est à toi de jouer #{@pseudo2}"
          puts "Choisis ta case : "
          puts "a1, a2, a3, b1, b2, b3, c1, c2, c3"


    puts "|#{@free_cases[0]}|#{@free_cases[1]}|#{@free_cases[2]}|"
    puts "-" * 7
    puts "|#{@free_cases[3]}|#{@free_cases[4]}|#{@free_cases[5]}|"
    puts "-" * 7
    puts "|#{@free_cases[6]}|#{@free_cases[7]}|#{@free_cases[8]}|"
    puts ">>"



          case_choice = gets.chomp #on attend le choix de l'utilisateur
          @game.move_player2(case_choice)


        # Méthode winner

            winner = @game.winner

            if winner == true then 
                puts "Vous avez gagné player_2"
            break
            end

       end
        
    end



end
