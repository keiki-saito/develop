class UsersController < ApplicationController
  #before_action :require_user_logged_in
  def new
    @user=User.new
  end

  def show
    
  end

  def userfmovielikes
    @userfmovielikes=current_user.like_fmovie.page(params[:page]).per(3)
  end

  def userjmovielikes
    @userjmovielikes=current_user.like_jmovie.page(params[:page]).per(3)
  end

  def useroriginallikes
    @useroriginallikes=current_user.like_original.page(params[:page]).per(3)
  end

  def userjanimelikes
    @userjanimelikes=current_user.like_janime.page(params[:page]).per(3)
  end

  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  def google_login
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.save
      redirect_to root_path,success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:sex,:birthday,:password,:password_confirmation)
  end
end
