require_relative 'config/environment'
require_relative './models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        user_input = params[:user_phrase]

        @piglatinized_text = PigLatinizer.new(user_input)
        #binding.pry

        
       erb :results
    end

end