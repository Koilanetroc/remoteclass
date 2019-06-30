# frozen_string_literal: true

class PageController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
  end

  def login
    # if params[:password] != ENV["TEACHER_PASSWORD"]
    #   redirect_to root_path
    # end
    # render "overview"
  end

  def teacher
    render "teacher"
  end

end
