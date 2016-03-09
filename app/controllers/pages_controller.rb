class PagesController < ApplicationController
  def query
    @message = params[:purple_hippo]
    @second_message = params[:green_llama]
    render 'query.html.erb'
  end

  def guess
    @name = params[:query_name].upcase
    if @name[0] == "A"
      @special_message = "Hey! Did you know that your name starts with the first letter in the alphabet? You probably did..."
    end

    winning_number = 32
    user_guess = params[:guess].to_i
    if user_guess == winning_number
      @game_message = "You win!"
    elsif user_guess > winning_number
      @game_message = "You suck! (Too high)"
    else
      @game_message = "You suck! (Too low)"
    end
    render 'guess.html.erb'
  end
end
