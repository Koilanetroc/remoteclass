class PupilChannel < ApplicationCable::Channel
  def subscribed
    puts "PARAMS=#{params}"
    reject && (return) if params["name"] == ENV["TEACHER_NAME"]
    stream_from "pupils_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
