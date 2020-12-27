class LikesController < ApplicationController

  #アニメお気に入り
  def janimecreate
    @like = current_user.likes.new(janime_id: params[:janime_id])
    #binding.pry
    if @like.save
      #binding.pry
      redirect_to "/janimes/#{params[:janime_id]}",success:  'いいね登録しました'
    end
  end

  def janimedestroy
    @like = Like.find_by(user_id: current_user.id, janime_id: params[:janime_id])
    if @like.destroy
      flash[:success] = "いいね解除しました"
      redirect_to "/janimes/#{params[:janime_id]}"
    end
  end

#国内映画お気に入り
  def jmoviecreate
    @like = current_user.likes.new(jmovie_id: params[:jmovie_id])
    #binding.pry
    if @like.save
      #binding.pry
      redirect_to "/jmovies/#{params[:jmovie_id]}",success:  'いいね登録しました'
    end
  end

  def jmoviedestroy
    @like = Like.find_by(user_id: current_user.id, jmovie_id: params[:jmovie_id])
    if @like.destroy
      flash[:success] = "いいね解除しました"
      redirect_to "/jmovies/#{params[:jmovie_id]}"
    end
  end

  #海外映画お気に入り
  def fmoviecreate
    @like = current_user.likes.new(fmovie_id: params[:fmovie_id])
    #binding.pry
    if @like.save
      #binding.pry
      redirect_to "/fmovies/#{params[:fmovie_id]}",success:  'いいね登録しました'
    end
  end

  def fmoviedestroy
    @like = Like.find_by(user_id: current_user.id, fmovie_id: params[:fmovie_id])
    if @like.destroy
      flash[:success] = "いいね解除しました"
      redirect_to "/fmovies/#{params[:fmovie_id]}"
    end
  end


  def originalcreate
    @like = current_user.likes.new(original_id: params[:original_id])
    #binding.pry
    if @like.save
      #binding.pry
      redirect_to "/originals/#{params[:original_id]}",success:  'いいね登録しました'
    end
  end

  def originaldestroy
    @like = Like.find_by(user_id: current_user.id, original_id: params[:original_id])
    if @like.destroy
      flash[:success] = "いいね解除しました"
      redirect_to "/originals/#{params[:original_id]}"
    end
  end

end
