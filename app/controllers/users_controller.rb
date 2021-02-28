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
        @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])

        redirect '/users/login'
    end

    get '/users/:id' do
        erb :'/users/:id'
    end

end