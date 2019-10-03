class SessionsController < ApplicationController
	def index

		sessions = Session.all
		render json: sessions
	
	end


	# def show
	# 	@user = User.find(params[:id])
	# 	render json: @user
	# end

	def create

		session = Session.create(user_id: params[:user_id], rounds: params[:rounds])
		render json: session

	end
end
