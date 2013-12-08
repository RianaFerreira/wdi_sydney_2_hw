require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'

get '/movie' do
  #check if a title was entered on the form
  #check that the title was not blank when GET submitted
  #then display the results

  if params[:title] && !params[:title].empty?
    #store the title entered on the form
    @movie_title = params[:title]
    #append the title and replace spaces with %20 placeholders
    @omdb_url = "http://omdbapi.com/?t=#{@movie_title.gsub(" ","%20")}"
    #get the movie information from omdb in JSON string format
    @movie_info_string = HTTParty.get @omdb_url
    #conver the JSON string to a hash
    @movie_info_hash = JSON @movie_info_string
  end
  #call the form to display the input field
  erb :form
end