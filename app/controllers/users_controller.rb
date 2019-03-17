class UsersController < ApplicationController
  def new
    @user = User.new    
  end
  
  def create
    @user = User.new(post_params)
    if @user.save
        redirect_to user_path(@user)
    else
        render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(post_params)
        redirect_to user_path(@user)
    else
        render 'edit'
    end
  end
  
  def index
    @user = User.all
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "El post ha sido eliminado satisfactoriamente"
    redirect_to users_path
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private
    def post_params
      params.require(:user).permit(:nombre,:apellido,:usuario,:contrasena,:empresa)
    end
end