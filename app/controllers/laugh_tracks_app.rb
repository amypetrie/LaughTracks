class LaughTracksApp < Sinatra::Base

  get '/' do
   'Hello World'
  end

  get '/comedians' do
    @comedians = Comedian.all
    erb :"comedians/index"
    # locals: {songs: songs}
  end

  # get '/songs/new' do
  #   erb :"songs/new"
  # end
  #
  # get '/songs/:id' do
  #   @song = Song.find(params[:id])
  #   erb :"songs/show"
  # end
  #
  # post '/songs' do
  #   song = Song.create(params[:song])
  #   redirect "/songs/#{song.id}"
  # end

end
