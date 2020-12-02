class JanimesController < ApplicationController
    def index
        @janimes=Janime.all.page(params[:page]).per(50)
    end
    def show
        @janime=Janime.find(params[:id])
        @janimecomments=@janime.janimecomments.page(params[:page]).per(3)
        @janimecomment=current_user.janimecomments.new
    end
end
