class UsersController < ApplicationController
  before_filter :admin_user, only: :index
  # before_filter :authenticated_user

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      sign_in @user
      redirect_to root_url, notice: 'Signed up!'
  	else
  		render 'new'
  	end
  end

  def index
    @users = Customer.paginate(page: params[:page])
    @customers = Customer.paginate(page: params[:page])
    @admins = Admin.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    if current_user != @user && !is_admin?
      redirect_to root_url, notice: 'You are not validated to view this page.'
    end
  end

  private

  	def user_params
  		params.require(:user).permit(:email, :password, :password_confirmation)
  	end
end
