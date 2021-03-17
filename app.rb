require_relative 'config/environment'
require_relative './models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        user_input = params[:user_phrase]
        lets_try_this = PigLatinizer.new

        @piglatinized_text = lets_try_this.piglatinize(user_input)
        #binding.pry

        
       erb :results
    end

end