class UsersController < ApplicationController

    get '/users/login' do
        erb :'/users/login'
    end

    post '/users/login' do
        @user = User.find_by(username: params[:username])
        binding.pry
    end

    get '/users/signup' do
        erb :'/users/signup'
    end

    post '/users/signup' do

    end

end