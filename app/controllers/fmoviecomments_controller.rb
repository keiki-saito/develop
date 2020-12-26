class FmoviecommentsController < ApplicationController
    def create
        #binding.pry
        @fmovie=Fmovie.find(params[:fmovie_id])
        @fmoviecomment=current_user.fmoviecomments.new(fmoviecomment_params)
        @fmoviecomments=@fmovie.fmoviecomments.page(params[:page]).per(3)
          
          if @fmoviecomment.save
            @fmoviecomment.user_id=current_user.id
           
            redirect_to fmovie_path(@fmovie),success: 'コメントに成功しました'
          else
            #binding.pry
            flash.now[:danger]='コメントに失敗しました'
            render 'fmovies/show'
          end
      
       end
      def search
        selection = params[:keyword]
        @posts = Post.sort(selection)
      end
      
        private
        def fmoviecomment_params
          params.require(:fmoviecomment).permit(:title,:description,:star).merge(fmovie_id: params[:fmovie_id])
        end
end
