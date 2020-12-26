class OriginalsController < ApplicationController
  def index
    @originals=Original.all.page(params[:page]).per(50)
  end

  def show
    @original=Original.find(params[:id])
    @originalcomments=@original.originalcomments.page(params[:page]).per(3)
    @originalcomment=current_user.originalcomments.new
    @janimes=Janime.all
    @jmovies=Jmovie.all
    @fmovies=Fmovie.all
  end
end
