class NotifierChannel < ApplicationCable::Channel
  def subscribed
    #This send an stream to received on layer
     stream_from "notifier_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def sender(data)
    # ActionCable.server.broadcast 'notifier_channel', notification: data['notification']
    Notification.create! content: data['notification']
  end
end
