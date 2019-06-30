# frozen_string_literal: true

class PageController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def login
    if params[:password] != ENV["TEACHER_PASSWORD"]
      redirect_to teacher_path
    else
      render "overview"
    end
  end

  def teacher
    render "teacher"
  end

end
