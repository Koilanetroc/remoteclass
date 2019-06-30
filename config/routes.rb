# frozen_string_literal: true

Rails.application.routes.draw do
  get "watch", to: "watch#index"

  root to: "index#index"

  get "page/index"
  get "stream/notify_done", to: "watch#notify"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
