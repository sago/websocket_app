class NotifierController < ApplicationController
  def show
    @notifications = Notification.all
    
  end
end
