class GenresController < ApplicationController
  def new
    url = 'http://www.imdb.com/genre'
    doc = Nokogiri::HTML(open(url))
    doc.css('#main a').each do |item|
      @new_genre = Genre.new
      @new_genre.name = item.text
      @new_genre.save
    end
  end

  def show
    @show_genres= Genre.find(params[:id]).shows.all
  end

  def index
    @all_genres = Genre.all

  end
end