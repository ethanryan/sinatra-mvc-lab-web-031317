require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do #renders the index.erb page
    erb :user_input
  end

####need this????
  # get '/' do #renders the piglatinize page??
  #   erb :piglatinize
  # end

  post '/piglatinize' do #want this to post here
    text_from_user = params[:user_phrase]
    #@pig_text = PigLatinizer.new(text_from_user)
  #  @pig_text = PigLatinizer.new(text_from_user)

    @pig_text = PigLatinizer.new #creates new instance
    @pig_final = @pig_text.to_pig_latin(text_from_user)
    #@pig_final = @pig_text.piglatinize(text_from_user)
    erb :piglatinize
  end

end
