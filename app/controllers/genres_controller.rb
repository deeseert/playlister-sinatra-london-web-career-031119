class GenresController < ApplicationController
  #1
  get '/genres' do
    @all_genres = Genre.all
  erb :'genres/index'
  end
  #3
  get '/genres/:slug' do
    @single_genre = Genre.find_by_slug(params[:slug])
    # binding.pry
    erb :'genres/show'
  end

end
