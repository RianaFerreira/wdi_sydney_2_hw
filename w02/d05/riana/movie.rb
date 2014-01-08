require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'

get '/movie' do
  # create a file to store the movie titles the user searched for
  @title_searched = File.new('movie.csv', 'a+')

  # check if a title was entered on the form
  # check that the title was not blank when GET submitted
  # then display the results

  if params[:title] && !params[:title].empty?
    # store the title entered on the form
    @movie_title = params[:title]

    # append the title and replace spaces with %20 placeholders
    @omdb_url = "http://omdbapi.com/?t=#{@movie_title.gsub(" ","%20")}&tomatoes=True"
    # get the movie information from omdb in JSON string format
    @movie_info_string = HTTParty.get @omdb_url
    # convert the JSON string to a hash
    @movie_info_hash = JSON @movie_info_string

    # only save the search if the JSON result was successful
    if @movie_info_hash["Response"] != "False"
      # save the search input
      @title_searched.puts(@movie_title)
      # close the file
      @title_searched.close()
    else
      # if the response returns and error
      # clear the @movie_title and don't render the form data
      @movie_title = nil
    end
  end
  # call the form to display the input field
  erb :form
end

#render the list of movie titles the user searched for  on the index page
get '/index' do
  @title_list = []
  #check if the file exists
  if File.exist?("movie.csv") && File.size?("movie.csv")
    #get the file and read it line by line, store each line in an array
    #file will automatically be closed when the loop exits
    File.open("movie.csv", "r") do |file|
    #store the file values in an array
      file.each_line do |line|
        if !@title_list.include?(line)
          @title_list.push(line)
        end
      end
    end
  end
  #the index page can now reference the array to render the links
  #no need to pass files around
  erb :index
end

get '/about' do
  erb :about
end

get '/clear_history' do
  if File.exist?("movie.csv")
    File.delete("movie.csv")
  end
  erb :index_new
end