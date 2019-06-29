# frozen_string_literal: true

class TeacherChannel < ApplicationCable::Channel
  def subscribed
    reject && (return) unless params["name"] == ENV["TEACHER_NAME"]
    stream_from "teachers_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message_to_pupils(data)
    ActionCable.server.broadcast "pupils_channel",
      message: data["message"]
  end
end
