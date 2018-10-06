class LaughTracksApp < Sinatra::Base
  set :method_override, true

  get '/' do
   redirect "/comedians"
  end

  get '/comedians' do
    # require 'pry'; binding.pry
    @comedians = Comedian.all
    if @comedians.where(age: params[:age]).empty? == true
      erb :'comedians/index'
    else
      @comedians = Comedian.where(age: params[:age])
      erb :'comedians/show'
    end
  end
  #
  # get '/comedians' do
  #   if params[:age]
  #     @comedians = Comedian.where(age: params[:age])
  #     ids = @comedians.pluck(:id)
  #     @specials = Special.filter_specials(ids)
  #   else
  #     @comedians = Comedian.all
  #     @specials = Special.all
  #   end
  #   @cities = @comedians.filter_cities
  #   erb :'comedians/index'
  # end
  # get '/comedians?age=64' do
  #   @comedian = Comedian.where(params[:age])
  #   erb :"comedians/show"
  # end

end
