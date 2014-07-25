class CustomersController < UsersController
  def new
  	@user = Customer.new
  end

  def create
  	@user = Customer.new(user_params)
  	if @user.save
  		# session[:user_id] = @user.id
      sign_in @user
      redirect_to root_url, notice: 'Signed up!'
  	else
  		render 'new'
  	end
  end

  private

  	def user_params
  		params.require(:customer).permit(:email, :password, :password_confirmation)
  	end
end