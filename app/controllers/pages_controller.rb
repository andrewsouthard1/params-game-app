class PagesController < ApplicationController
  def param_page
    @name = params["name"].upcase
    render 'param_guess.html.erb'
  end
end
