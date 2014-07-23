class CustomersController < ApplicationController
  def new
  	@user = Customer.new
  end

  def create
  	@user = Customer.new(user_params)
  	if @user.save
  		# session[:user_id] = @user.id
      cookies[:auth_token] = @user.auth_token
      redirect_to root_url, notice: 'Signed up!'
  	else
  		render 'new'
  	end
  end

  def index
  end

  private

  	def user_params
  		params.require(:customer).permit(:email, :password, :password_confirmation)
  	end
end