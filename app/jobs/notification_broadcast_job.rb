class NotificationBroadcastJob < ApplicationJob
  queue_as :default

  def perform(notification)
    ActionCable.server.broadcast 'notifier_channel', message: render_message(notification)
  end

  private
  def render_message(notification)
    ApplicationController.renderer.render(partial: 'notifications/notification', locals: { notification: notification })
  end  
end
