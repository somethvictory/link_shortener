class DashboardController < ApplicationController
  def index
    @urls = current_user.urls
  end
end
