class UsersController < ApplicationController

    get '/users/login' do
        erb :'/users/login'
    end

    post '/users/login' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id

            redirect "/users/#{@user.id}"
        else

        end
        binding.pry
    end

    get '/users/signup' do
        erb :'/users/signup'
    end

    post '/users/signup' do

    end

    get '/users/:id' do
        erb :'/users/#{@user.id}'
    end

end