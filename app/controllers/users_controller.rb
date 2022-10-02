class UsersController < ApplicationController

    def show
        user = find_user
        render json: user, include: :items
    end

    private

    def find_user
        user = User.find(params[:id])
    end

end
