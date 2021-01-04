class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def edit
    
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
  end

  # private

  def user_params
    params.require(:user).permit(:email, :nickname, :first_name, :last_name, :first_name_kana, :last_name_kana, :birthday, :image)
  end
end
