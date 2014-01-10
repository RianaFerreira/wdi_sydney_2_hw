require 'pry'
require 'sinatra'
require 'sinatra/reloader'

#code to set up hash of lines (keys) that store the array of stops (values) per line
subway = {
    "N Line" => ["Times Square","34th","28th on the N","Union Square","8th on the N"],
    "L Line" => ["8th","6th","Union Square","3rd","1st"],
    "6 Line" => ["Grand Central","33rd","28th","23rd","Union Square","Astor Place"]
  }

#
get '/' do
  @subway = subway
  @route = []
  erb :form
end

post '/subway' do
  @subway = subway
  from = params["from"]
  to = params["to"]
  from_line = from.split(',')[0]
  from_stop = from.split(',')[1]
  to_line = to.split(',')[0]
  to_stop = to.split(',')[1]
  puts "#{from_line} #{from_stop} #{to_line} #{to_stop} "
  @route = route_details(subway, from_line, from_stop, to_line, to_stop)
  erb :form

end

#get the route information from the user

def route_details(subway, boardingLine, boardingStop, exitLine, exitStop)
  #check if the route changes lines
  if boardingLine == exitLine
    #get the start and end stops on the line
    tripStart = subway[boardingLine].index(boardingStop)
    tripEnd = subway[exitLine].index(exitStop)
    #calculate the number of stops on the route excluding the current stop
    numStops = tripEnd - tripStart
    #loop through the stops on the line from the boarding stop to the exit stop and display them
    subway[boardingLine].slice(tripStart+1..tripEnd)
  else
    #get the start and end stops before the change over to the new line
    tripStart = subway[boardingLine].index(boardingStop)
    changeOver = subway[boardingLine].index("Union Square")
    #get the start and end stops after the change over to the new line
    changeStart = subway[exitLine].index("Union Square")
    tripEnd = subway[exitLine].index(exitStop)
    #calculate the number of stops on the route
    numStopsBefore = changeOver - tripStart
    numStopsAfter = tripEnd - changeStart
    #display the number of stops before change-over, after change-over and in total on the route
    #loop through the route stops before the change-over and display them
    subway[boardingLine].slice(tripStart..changeOver)
    #loop through the route stops after the change-over and display them
    subway[boardingLine].slice(tripStart..changeOver) + subway[exitLine].slice(changeStart+1..tripEnd)
  end
end

