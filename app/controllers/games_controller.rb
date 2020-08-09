require "open-uri"

class GamesController < ApplicationController
  def new
    @array_of_letters = []
    7.times do
      @array_of_letters << ('a'..'z').to_a[rand(26)]
    end
    3.times do
      @array_of_letters << %w(a e i o u)[rand(5)]
    end
    @array_of_letters.shuffle!
  end
  def score
    @array_of_letters = params[:letters].gsub(/\s+/, "").split('')
    @entry = params[:entry]
    entry_array = @entry.split('')
    @validity = true
    entry_array.each do |letter|
      if @array_of_letters.find_index(letter).present?
        @array_of_letters.delete(@array_of_letters.find_index(letter))
      else
        @validity = false
      end
    end
    response = open("https://wagon-dictionary.herokuapp.com/#{@entry}")
    json = JSON.parse(response.read)
    @found = json['found']
  end
end
