class Application < Sinatra::Base
  # Write your code here!
  get '/' do
    erb :index
  end
  #creates a GET route at the / URL
  #the erb :index tells the app to render to the client the file in views/index.erb
  post '/greet' do
     erb :greet
   end

end


#this is our main application file, defining the controler that will power this web application.

#when it inherits from sinatra::base it becomes a Sinatra controller.
