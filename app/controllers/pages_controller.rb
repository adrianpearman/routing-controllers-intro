class PagesController < ApplicationController

  #add value for main header title
  def welcome
    @header = "This is the welcome page"
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/400/200/cats"
  end
  
end
