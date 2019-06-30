# frozen_string_literal: true

class WatchController < ApplicationController
  def index
  end

  def notify
    ActionCable.server.broadcast "teachers_channel",
      message: "triggered event"
    ActionCable.server.broadcast "pupils_channel",
      message: "triggered event"
    render plain: "Ok"
  end
end
