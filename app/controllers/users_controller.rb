class UsersController < ApiController
	before_action :require_login

  skip_before_action :verify_authenticity_token

  #require "will_paginate"

	def index
		@user = User.all
   	#@users = User.paginate(:page => params[:page], :per_page => 2)

   	@users= paginate_data(@user)
		render json: @users
	end

	def create
		@user = User.new(post_params)
		if @user.save
      render json: @user, status: :created#, meta: default_meta
  	else
      rendered_format(@user, :unprocessable_entity)
    end
	end

	def paginate_data(obj)
		puts params[:page]
		puts "pageeee"
    obj.paginate(page: params[:page], per_page: 2)
  end

	def destroy
	  @user = User.find(params[:id])
      @user.destroy
      head 204
	end

	private
	def post_params
		params.require(:user).permit(:name, :address, :city, :state, :ph_number, :pin_code)
	end
end
