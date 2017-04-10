class PagesController < ApplicationController
  # to simplify the code on lines 2 and 3
  before_action :set_kitten_url, only: [:kitten, :kittens]

  #method adding value to main header title
  def welcome
    @header = "This is the Welcome Page"
  end

  #2 method for adding photo to page
  def kitten
  end

  #3 method for adding photos to page
  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def secrets
    if params[:magic_word] == "adrian"
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to '/welcome'
    end
  end
end
