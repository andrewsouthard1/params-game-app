class PagesController < ApplicationController
  def param_page
    @name = params["name"].upcase
    @message = ""
    @message = "Hey, your name starts with the first letter of the alphabet!" if @name[0] == 'A'
    guess_num(63)
    render 'param_guess.html.erb'
  end

  def guess_num(num)
    @number = params["number"].to_i
    @game_line =
      if num > @number
        "Your guess is too low."
      elsif num < @number
        "Your guess is too high."
      else
        "You got it right! The number was #{num}"
      end
  end

  def button_click
    render 'button_click.html.erb'
  end

end


