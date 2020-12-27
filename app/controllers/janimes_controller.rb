class JanimesController < ApplicationController
    before_action :require_user_logged_in
    def index
        @janimes=Janime.all.page(params[:page]).per(50)
        
    end
    def show
        @janime=Janime.find(params[:id])
        @janimecomments=@janime.janimecomments.page(params[:page]).per(3)
        @janimecomment=current_user.janimecomments.new
        @like=Like.new
    end
end
