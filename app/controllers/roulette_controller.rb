class RouletteController < ApplicationController

  def roulette
  	n = rand(36)
  	if params[:number].to_i == n
  		@out = "Roll is #{n}, You win #{params[:wager].to_i * 36}"
  	else
  		@out = "Roll is #{n}, You lose"
  	end
  end
end
