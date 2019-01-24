#LIAISON AVEC LE BOARD
$:.unshift File.expand_path("../", __FILE__)
require 'board'

class Boardcase

	attr_accessor :position, :symbole

    def initialize(position, symbole)
    	@position = position
    	@symbole = symbole
    end




end
