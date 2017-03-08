class PagesController < ApplicationController
  def param_page
    @name = params["name"].upcase
    @message = ""
    if @name[0] == 'A'
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    guess_num(63)
    render 'param_guess.html.erb'
  end

  def guess_num(num)
    @number = params["number"].to_i
    if num > @number
      @game_line = "Your guess is too low."
    elsif num < @number
      @game_line = "Your guess is too high."
    else
      @game_line = "You got it right! The number was #{num}"
    end
  end      
end
