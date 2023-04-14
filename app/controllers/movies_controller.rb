class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @random_movie = Movie.all.sample
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
