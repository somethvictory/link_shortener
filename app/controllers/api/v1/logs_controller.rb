module Api
  module V1
    class LogsController < ApplicationController
      before_action :find_url

      def index
        @logs = @url.logs
        render json: @logs
      end

      private
      def find_url
        @url = current_user.urls.find_by!(short_name: params[:url_id])
      end
    end
  end
end
