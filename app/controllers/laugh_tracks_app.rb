class LaughTracksApp < Sinatra::Base
  set :method_override, true

  get '/' do
   redirect "/comedians"
  end

  get '/comedians' do
    @comedians = Comedian.all
    if @comedians.where(age: params[:age]).empty? == true
      erb :'comedians/index'
    else
      @comedians = Comedian.where(age: params[:age])
      redirect "/comedians/show"
    end
  end

  get '/comedians/show' do
    erb :'comedians/show'
  end

end
