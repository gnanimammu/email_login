class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

  def new
  	@user = User.new params[:user]

  end

  def create
  	user = User.new(first_name: params[:user][:first_name], last_name: params[:user][:last_name], age: params[:user][:age], mobile_number: params[:user][:mobile_number], email: params[:user][:email])
    redirect_to users_path
  end

	def edit
	  @user = User.find(params[:id])
    end

	def update
		@user = User.find(params[:id])
		@user.update(first_name: params[:user][:first_name], last_name: params[:user][:last_name], age: params[:user][:age], mobile_number: params[:user][:mobile_number], email: params[:user][:email])
		redirect_to users_path
	end

	def show
		@user = User.find(params[:id])
	end

  def destroy
	  @user = User.find(params[:id])
	  @user.delete
	  redirect_to users_path
	end

end
