require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @phrase_to_pig = params[:user_phrase]
    pig_me = PigLatinizer.new
    @pigged_phrase = pig_me.to_pig_latin(@phrase_to_pig)
    erb :piglatinize
  end


end
