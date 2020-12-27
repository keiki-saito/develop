class JtvsController < ApplicationController
    def index
        @jtvs=Jtv.all.page(params[:page]).per(50)
    end

    def show
        @jtv=Jtv.find(params[:id])
        @jtvcomments=@jtv.jtvcomments.page(params[:page]).per(3)
        @jtvcomment=current_user.jtvcomments.new
        # @like=Like.new
    end
end
