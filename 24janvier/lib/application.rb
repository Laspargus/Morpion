#LIAISON AVEC LE GAME
$:.unshift File.expand_path("../", __FILE__)
require 'game'
#require 'player'

class Application 
attr_accessor :pseudo1, :pseudo2

    def initialize
        #On clean le terminal 
        system "clear"
        puts "Bienvenue dans notre jeu Joueur 1"
        puts "Veuillez renseignez votre Pseudo"
        print ">> "

        #On stock le pseudo 1 dans une variable
        @pseudo1=gets.chomp

        puts "Bienvenue dans notre jeu Joueur 2"
        puts "Veuillez renseignez votre Pseudo"
        print ">> "
        #On stocke le pseudo 2 dans une variable
        @pseudo2=gets.chomp

        #On instancie un nouveau jeu appelé @game, avec en attributs les pseudos récupérés
        @game = Game.new(@pseudo1, @pseudo2)

        #On clean le terminal pour lancer le jeu proprement
        system "clear"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Bienvenue #{@pseudo1} et #{@pseudo2}. Notre partie peut commencer"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        
        #Petite pause de 2 seconde
        sleep 2
    end

    def perform 
        
       while true
            system "clear"
            puts "C'est à toi de jouer #{@pseudo1}"
            puts "Choisis ta case : "
            puts ""
            @game.your_turn


            #on récupère le choix de l'utilisateur
            case_choice = gets.chomp 

                while true

                    if @game.check_choice(case_choice) == true

                    break
                    else

                    case_choice = gets.chomp 
                    end

                end



            @game.move_player1(case_choice)

            # Méthode winner
            winner = @game.winner
                if winner == true then 
                    puts "Vous avez gagné #{@pseudo1}"
                break
                end
            system "clear"
            puts "C'est à toi de jouer #{@pseudo2}"
            puts "Choisis ta case : "
            puts ""
            @game.your_turn


            case_choice = gets.chomp #on attend le choix de l'utilisateur




                while true

                    if @game.check_choice(case_choice) == true

                    break
                    else

                    case_choice = gets.chomp 
                    end

                end

            @game.move_player2(case_choice)


            # Méthode winner
            winner = @game.winner
                if winner == true 
                    then puts "Vous avez gagné #{@pseudo2}"
                    break
                end

       end
        
    end



end
