# frozen_string_literal: true

Rails.application.routes.draw do
  get "watch", to: "watch#index"

  root to: "index#index"

  get "page/index"

  get "stream/notify_done", to: "watch#notify"

  get "/teacher", to: "page#teacher"
end
