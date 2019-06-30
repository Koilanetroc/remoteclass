# frozen_string_literal: true

class PupilChannel < ApplicationCable::Channel
  def subscribed
    puts "PARAMS=#{params}"
    reject && (return) if params["name"] == ENV["TEACHER_NAME"]
    stream_from "pupils_channel"
  end

  def push_image_data(message)
    puts "PID"
    puts params["name"]

    ActionCable.server.broadcast "teachers_channel", {
      name: params["name"],
      event: "new-image-data"
    }.merge(message)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
