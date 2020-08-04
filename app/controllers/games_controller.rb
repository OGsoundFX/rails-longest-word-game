class GamesController < ApplicationController
  def new
    @array_of_letters = []
    10.times do
      @array_of_letters << ('a'..'z').to_a[rand(26)]
    end
  end
  def score
    @array_of_letters = params[:letters]
    @entry = params[:entry]
    entry_array = @entry.split('')
    raise
  end
end
