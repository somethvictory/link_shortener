module Api
  module V1
    class UrlsController < ApplicationController
      def index
        @urls = current_user.urls.all
        render json: @urls, status: :ok
      end

      def create
        @url = current_user.urls.new(urls_params)
        if @url.save
          render json: @url, status: :created
        else
          render json: @url.errors, status: :unprocessable_entity
        end
      end

      def show
        @url = current_user.urls.find(params[:id])
        render json: @url, status: :ok
      end

      private
      def urls_params
        params.require(:url).permit(:original_name)
      end
    end
  end
end
