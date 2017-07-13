module Api
  module V1
    class UrlsController < ApplicationController
      def create
        @url = current_user.urls.new(urls_params)
        if @url.save
          render json: @url, status: :created
        else
          render json: @url.errors, status: :unprocessible_entity
        end
      end

      private
      def urls_params
        params.require(:url).permit(:original_name)
      end
    end
  end
end
