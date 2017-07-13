class UrlsController < ApplicationController
  def show
    @url = Url.find_by(short_name: params[:id])
    redirect_to @url.original_name
  end
end
