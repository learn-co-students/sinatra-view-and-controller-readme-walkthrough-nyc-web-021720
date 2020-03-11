require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    # original_string = params["string"]
    @reversed_string = params["string"].reverse
    erb :reversed
  end
    # set reversed_string to instance variable so .erb file can read it. (though other controller methods cannot!!)
    
    # The controller is calling the erb method, passing in the :symbol for a view file.erb (which erb method call interprets) 
      ## erb :symbol -> sinatra method that creates htrml string based on the file represented by :symbol passed to it. 
      ## method then tells the server to return to the client via response - the html that erb file 



  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end