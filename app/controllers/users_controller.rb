class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:info] = "サービスをご利用する時はログインしてください。"
      redirect_to @user, notice: "会員登録が完了しました。"
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def message_boards
    @message_boards = current_user.message_boards.order(updated_at: :desc)
  end
  
  private
  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end