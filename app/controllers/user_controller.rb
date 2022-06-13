class UserController < ActionController::API
  def register
    user = User.new(register_params)
    saved = user.save!

    return render json: user.errors , status: 422 unless saved
    render json: user

  end


  def login
    user = User.find_by(email: login_params[:email])&.authenticate(login_params[:password])

    return render json: {error: 'un authenticated'} , status: 401 unless user
    render json: user


  end



  private
  def register_params
    params.require(:user).permit(:full_name , :email , :password)
  end


  def login_params
    params.require(:user).permit(:email , :password)
  end
end
