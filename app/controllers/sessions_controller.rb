class SessionsController < ApplicationController

    def new
    end

    def create
        user_name = params[:name]
        if user_name.nil? || user_name.empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.delete :name
    end
end
