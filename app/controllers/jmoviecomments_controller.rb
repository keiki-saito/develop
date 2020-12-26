class JmoviecommentsController < ApplicationController
    def create
        #binding.pry
        @jmovie=Jmovie.find(params[:jmovie_id])
        @jmoviecomment=current_user.jmoviecomments.new(jmoviecomment_params)
      
          
          if @jmoviecomment.save
            @jmoviecomment.user_id=current_user.id
           
            redirect_to jmovies_path,success: 'コメントに成功しました'
          else
            #binding.pry
            flash.now[:danger]='コメントに失敗しました'
            @jmoviecomments=@jmovie.jmoviecomments.page(params[:page]).per(3)
            render 'jmovies/show'
          end
      
       end
      
        private
        def jmoviecomment_params
          params.require(:jmoviecomment).permit(:title,:description,:star).merge(jmovie_id: params[:jmovie_id])
        end
end
