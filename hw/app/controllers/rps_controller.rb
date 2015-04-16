class RpsController < ApplicationController
def play
	@computer = rand(3)
	@choice = params[:choice].to_i
	@hands = nums = Array.[]('Rock', 'Paper', 'Scissors')
	@playerHand = @hands[@choice]
	@computerHand = @hands[@computer]
	if (@choice > @computer || (@choice == 0 && @computer == 2))
		@won = 'You\'ve Won!'
	elsif (@choice == @computer) 
		@won = 'It\'s a Tie!'
	else
		@won = 'You Lost!'
	end
	end
end
