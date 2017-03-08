class PagesController < ApplicationController
  def param_page
    @name = params["name"].upcase
    @message = ""
    if @name[0] == 'A'
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'param_guess.html.erb'
  end
end
