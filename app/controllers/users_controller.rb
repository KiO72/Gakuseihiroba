class UsersController < ApplicationController
    def index
       
    end
    
    def new
        @user = User.new
    end
    
    def create
             @user = User.new(uid: params[:uid] ,
             password: BCrypt::Password.create(params[:password]),
             password_confirmation: params[:password_confirmation],contents: params[:contents])
       if @user.save
       flash[:notice] = params[:uid]+'さんをユーザに登録しました'
       redirect_to root_path
       else
       render 'new'
       end
    end
end
