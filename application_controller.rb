require 'bundler'
Bundler.require
require_relative 'models/model.rb'
enable :sessions
class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end
  
#link to about page

  get '/about' do
    erb :about
  end
  
#post route
  
  post '/returnMenu' do
    userBudget = params[:budget]
    @userBudget = userBudget.to_i
    @result = returnMenu(@userBudget)
    erb :results
  end

  post '/course' do
    @userCourse = params[:courseChoice]
    session[:menu] = params[:currmenu]
    # @resultCourse = menu[@userCourse.to_sym]
    erb :debug
  end


end