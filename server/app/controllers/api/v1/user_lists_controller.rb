class  Api::V1::UserListsController < ApplicationController
    def index
        render json: UserList.all, status: 201
    end
end
