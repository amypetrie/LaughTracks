class LaughTracksApp < Sinatra::Base
  set :method_override, true

  get '/' do
   redirect "/comedians"
  end

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    if @comedians.where(age: params[:age]).empty? == true
      erb :'comedians/index'
    else
      @comedians = Comedian.where(age: params[:age])
      erb :'comedians/index'
    end
  end

  get '/comedians/new' do
    erb :'comedians/new'
  end

  post'/comedians' do
    comedian = Comedian.create(params[:comedian])
    redirect "/comedians"
  end

end
