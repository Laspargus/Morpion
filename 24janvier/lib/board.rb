#LIAISON AVEC LE BOARDCASE
$:.unshift File.expand_path("../", __FILE__)
require 'boardcase'

class Board 

	attr_accessor :array

    def initialize
=begin
        a1 = Boardcase.new("a1")
        a2 = Boardcase.new("a2")
        a3 = Boardcase.new("a3")
        b1 = Boardcase.new("b1")
        b2 = Boardcase.new("b2")
        b3 = Boardcase.new("b3")
        c1 = Boardcase.new("c1")
        c2 = Boardcase.new("c2")
        c3 = Boardcase.new("c3")
=end

        #@array = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
    end


    def move_player1 (choice_case, symbole_player1)
        choice_case_player1 = Boardcase.new(choice_case, symbole_player1)
        return choice_case_player1
    	#puts choice_case_player1.position
    	#puts choice_case_player1.symbole
    end


    
    def move_player2 (choice_case, symbole_player2)
        choice_case_player2 = Boardcase.new(choice_case, symbole_player2)
        return choice_case_player2
    	#puts choice_case_player2.position
    	#puts choice_case_player2.symbole

    end

   def  winner
        if ('a1'.nil? && 'a2'.nil? && 'a3'.nil?)
            puts "a1 a2 et a3 ne sont pas toutes choisies"
            result=false

        else
            #if  ('a1'.symbole=='a2'.symbole && 'a2'.symbole=='a3'.symbole)
             #   result=true
            #else
             #   result=false
            #end
            puts "a1 a2 et a3 ont déja été choisies"
            result=true
        end
    
        return result


    end
end