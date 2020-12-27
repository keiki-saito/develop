class JanimecommentsController < ApplicationController
    def create
        #binding.pry
        if Janime.ids
        @janime=Janime.find(params[:janime_id])
        @janimecomment=current_user.janimecomments.new(janimecomment_params)
          #@usercomment = Usercomment.new(comment_params)
          @janimecomment.user_id = current_user.id
        
          if @janimecomment.save
            @janimecomment.user_id=current_user.id
           
            redirect_to janimes_path,success: 'コメントに成功しました'
          else
            #binding.pry
            flash.now[:danger]='コメントに失敗しました'
            @janimecomments=@janime.janimecomments.page(params[:page]).per(3)
            render 'janimes/show'
          end
        end
       end
      
        private
        def janimecomment_params
          params.require(:janimecomment).permit(:title,:description,:star).merge(janime_id: params[:janime_id])
        end
end
