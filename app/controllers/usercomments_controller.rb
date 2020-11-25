class UsercommentsController < ApplicationController
    def new
        @usercomment=Usercomment.new
    end

    
    def create
        @usercomment = Usercomment.new(comment_params)
        @usercomment.user_id = current_user.id
        if @usercomment.save
          redirect_to root_path,success: 'コメントに成功しました'
        else
          flash.now[:danger]='コメントに失敗しました'
          render :new
        end
    
     end
    
      private
      def comment_params
        params.require(:usercomment).permit(:title,:description)
      end
    
end
