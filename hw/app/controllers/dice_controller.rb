class DiceController < ApplicationController
def roll
	@dice1 = rand(6) + 1
	@dice2 = rand(6) + 1
	@total = @dice1 + @dice2
	if (params.has_key?(:point))
		@point = params[:point].to_i
		if (@total == 7)
			@msg2 = 'You Lose!'
			@buttonText = 'Start Over!'
			@link = '/dice'
		elsif (@total != @point)
			@msg1 = 'Your goal is ' + @point.to_s + ' but you\'ve rolled ' + @total.to_s
			@msg2 = 'Roll again!'
			@link = '/dice/roll?point=' + @point.to_s
			@buttonText = 'Roll Again'
		else
			@msg2 = 'You won!'
			@buttonText = 'Start Over'
			@link = '/dice'	
		end
	else
		if (@total == 7 || @total == 11)
			@msg2 = 'You won!'
        	@buttonText = 'Start Over'
        	@link = '/dice'
		elsif (@total == 2 || @total == 3 || @total == 12)
		  	@msg2 = 'You lose!'
        	@buttonText = 'Start Over'
        	@link = '/dice'
		else
			@msg1 = 'Your goal is now ' + @total.to_s
			@msg2 = 'Now try to roll a ' + @total.to_s + ' before you roll a 7'
			@link = '/dice/roll?point=' + @total.to_s
			@buttonText = 'Roll the Dice'
			end
	end
	end
end