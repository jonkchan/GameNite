class UsersController < ApplicationController
    
    def login
        # if logged_in?
        #     redirect_to '/categories'
        # end
    end

    def login_user
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to "/users/#{user.id}"
        else
            puts 'failed login'
            redirect_to '/login'
        end
    end

    def signup
        
    end
    
    def signup_user
        if !params[:password].empty? && !params[:username].empty? && !params[:email].empty?
            
            if User.find_by(:username => params[:username])
                redirect_to '/signup'
            end
            
            @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
            if @user.save
                session[:user_id] = @user.id
                redirect "/users/#{@user.id}"
            else
                redirect_to '/signup'
            end
        else
            redirect_to '/signup'
        end
    end

    def logout
        if logged_in?
          session.destroy
        end
        redirect_to '/login'
    end

    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end

end
