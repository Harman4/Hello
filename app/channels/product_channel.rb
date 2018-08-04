class ProductChannel < ApplicationCable::Channel
  ActionCable.server.broadcast 'product_channel', comment: "Hello World", average_rating: 5
  def subscribed
    stream_from "product_channel"
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
