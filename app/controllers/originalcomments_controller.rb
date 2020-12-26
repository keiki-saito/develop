class OriginalcommentsController < ApplicationController
    def create
        #binding.pry
        @original=Original.find(params[:original_id])
        @originalcomment=current_user.originalcomments.new(originalcomment_params)
        @originalcomments=@original.originalcomments.page(params[:page]).per(3)
          
          if @originalcomment.save
            @originalcomment.user_id=current_user.id
           
            redirect_to original_path(@original),success: 'コメントに成功しました'
          else
            #binding.pry
            flash.now[:danger]='コメントに失敗しました'
            
            render 'orginal/show'
          end
      
       end
      
        private
        def originalcomment_params
          params.require(:originalcomment).permit(:title,:description,:star).merge(original_id: params[:original_id])
        end
end
