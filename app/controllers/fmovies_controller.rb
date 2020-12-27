class FmoviesController < ApplicationController
    before_action :require_user_logged_in
    def index
        @fmovies=Fmovie.all.page(params[:page]).per(50)
    end

    def show
        @fmovie=Fmovie.find(params[:id])
        @fmoviecomments=@fmovie.fmoviecomments.page(params[:page]).per(3)
        @fmoviecomment=current_user.fmoviecomments.new
    end
end
