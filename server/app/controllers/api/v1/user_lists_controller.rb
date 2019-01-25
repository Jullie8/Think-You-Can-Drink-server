class  Api::V1::UserListsController < ApplicationController
    def index
        render json: UserList.all, status: 201
    end

  def create
    @user = UserList.create(create_user)
    render json: @user, status: :accepted
  end

    private

    def create_user
        params.require(:user_list).permit(:sex, :weight)
    end 
end
