class SessionsController < ApplicationController
  def new
  end

  def create
    user=User.find_by(name: params[:session][:name])
    if user&&user.authenticate(params[:session][:password])
      session[:user_id]=user.id
      redirect_to root_path, success: 'ログインに成功しました'
    else
      flash.now[:danger]='ログインに失敗しました'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path, success: 'ログアウトしました'
  end

  
end
