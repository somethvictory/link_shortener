module Api
  module V1
    class UrlsController < ApplicationController
      def create
        @url = current_user.urls.find_or_initialize_by(urls_params)
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
