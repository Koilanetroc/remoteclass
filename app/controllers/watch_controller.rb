# frozen_string_literal: true

class WatchController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :notify

  def index
  end

  def notify
    ActionCable.server.broadcast "teachers_channel",
      event: "broadcast-end"
    ActionCable.server.broadcast "pupils_channel",
      event: "broadcast-end"
    render plain: "Ok"
  end
end
