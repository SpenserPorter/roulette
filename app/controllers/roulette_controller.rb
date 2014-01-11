class RouletteController < ApplicationController
  def new
    @balance = Array.new(1,1000)
  end

  def roulette
    n = rand(36)
    if @balance == nil
       @balance = Array.new(1,1000)
    end

    if params[:number].to_i == n
  		@out = "Roll is #{n}, You win #{params[:wager].to_i * 36}"
      z = (@balance.last + (params[:wager].to_i * 36))
      @balance.push(z)
  	else
  		@out = "Roll is #{n}, You lose"
      z = (@balance.last - params[:wager].to_i)
      @balance.push(z)
  	end
  end
end
