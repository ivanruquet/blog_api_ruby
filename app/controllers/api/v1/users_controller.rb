module Api
  module V1
    class UsersController < ApplicationController
        before_action :set_user, only: %i[update show]

      def index
        @users = User.all
        render json: @users
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity

        end
      end

      def show
        render json: @user
      end

      def update
        if @user.update(user_params)
          render json: @user, status: :created
          return
        end
        render json: @user.errors, status: :unprocessable_entity
      end

      def destroy
      end

      private
      def user_params
        params.require(:user).permit(:name, :lastname, :email, :username)
      end

      def set_user
        @user = User.find_by(id: params[:id])
      end
    end
  end
end
