require_relative 'config/environment'

class App < Sinatra::Base

    configure do 
        enable :sessions
        set :session_secret, "c87514a2d497fe85ccd63b5209bf540310d83ea5c91c673b9c5a8a63decdad1950d13743bcd4b437aeb96a84bf62993143d89bd77409ac4921401610dcab921c"
    end

    get "/" do 
        erb :index
    end 

    post "/checkout" do 
        session["item"] = params[:item]
        @session = session
        "#{params[:item]}"
    end 

end