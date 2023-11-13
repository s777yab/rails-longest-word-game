require "open-uri"

class GamesController < ApplicationController
  def home
  end

  def new
    @letters = Array.new(10) { ('a'..'z').to_a.sample.upcase }
  end

  def score
    # params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    response = URI.open(url).read
    puts response
    puts response.class
  end
end
