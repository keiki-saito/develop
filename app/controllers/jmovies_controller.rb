class JmoviesController < ApplicationController
    def index
        @jmovies=Jmovie.all.page(params[:page]).per(50)
    end
    def show
        @jmovie=Jmovie.find(params[:id])
        @jmoviecomments=@jmovie.jmoviecomments.page(params[:page]).per(3)
        @jmoviecomment=current_user.jmoviecomments.new
    end
end
