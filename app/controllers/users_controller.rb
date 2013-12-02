class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Не авторизован как администратора.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def update
    authorize! :update, @user, :message => 'Не авторизован как администратора.'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to users_path, :notice => "Пользователь обновлен."
    else
      redirect_to users_path, :alert => "Невозможно обновить пользователя."
    end
  end
    
  def destroy
    authorize! :destroy, @user, :message => 'Не авторизован как администратора.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "Пользователь удален."
    else
      redirect_to users_path, :notice => "Вы не можете удалить самии себя."
    end
  end
end