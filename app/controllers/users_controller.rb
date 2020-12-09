class UsersController < ApplicationController
  before_action :set_user, only:  [:show, :update, :destroy]

  def index
  @users = User.all
  end

  def show

  end

  def create
  #   @user = User.new(
  #     name: params[:name],
  #     account: params[:account],
  #     email: params[:email],
  #  )
  #  binding.pry
  @user = User.new(user_params)

   @user.save!
   render :show
  end

  def update

    @user.update!(user_params)
    render :show
  end

  def destroy

    @user.destroy!
    render :show
  end


  private

    def user_params
      params.require(:user).permit(:name,:account,:email)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
