class LaughTracksApp < Sinatra::Base

  get '/' do
   redirect "/comedians"
  end

  get '/comedians' do
    @comedians = Comedian.all
    erb :"comedians/index"
    # locals: {songs: songs}
  end

  get '/comedians?age=64' do
    @comedian = Comedian.find(params[:age])
    erb :"comedians/show"
  end

  # get '/songs/new' do
  #   erb :"songs/new"
  # end
  #
  # post '/songs' do
  #   song = Song.create(params[:song])
  #   redirect "/songs/#{song.id}"
  # end

end
