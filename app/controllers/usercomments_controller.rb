class UsercommentsController < ApplicationController
 

    
    def create
      #binding.pry
      @movie=Japananime.find(params[:movie_id])
      @usercomment=current_user.usercomments.new(comment_params)
        #@usercomment = Usercomment.new(comment_params)
        @usercomment.user_id = current_user.id
        
        if @usercomment.save
          @usercomment.user_id=current_user.id
         
          redirect_to root_path,success: 'コメントに成功しました'
        else
          #binding.pry
          flash.now[:danger]='コメントに失敗しました'
          render 'japananimes/show'
        end
    
     end
    
      private
      def comment_params
        params.require(:usercomment).permit(:title,:description,:star).merge(movie_id: params[:movie_id])
      end
    
end
