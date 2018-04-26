class UsersController < ApplicationController
  def new
        @user = User.new
    end

    def create
        @user = User.new(name: params["username"], bio: params["bio"])
        if @user.save
            redirect_to form_path(@user.name)
        else
            render 'new'
        end
    end

    def show
        @user = User.find_by_name(params[:name])
    end
end
