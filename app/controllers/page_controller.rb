# frozen_string_literal: true

class PageController < ApplicationController
  def index
  end

  def teacher
    if params[:password] != ENV["TEACHER_PASSWORD"]
      redirect_to root_path
    end
    render "overview"
  end
end
