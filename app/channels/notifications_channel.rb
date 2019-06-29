class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    puts "PASSWORD MATHES: #{params["password"] == ENV["TEACHER_PASSWORD"]}"
    reject and return unless params["password"] == ENV["TEACHER_PASSWORD"]
    stream_from "notifications_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
