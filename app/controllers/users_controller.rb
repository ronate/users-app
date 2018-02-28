class UsersController < ApplicationController
	protect_from_forgery with: :null_session
  def mass_create
  	users = []
  	params[:users].each do |u|
  		users << User.create(user_params(u))
  	end
  	render json: {result: users.collect do |u|
  	  		if u.valid?
  	  			{u.name => :ok}
  	  		else
  	  			{u.name => u.errors}
  	  		end
  	  	end}
  end

  private
  def user_params params
  	params.permit(:name, :email, :creation_date)
  end
end
