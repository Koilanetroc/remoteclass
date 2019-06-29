# frozen_string_literal: true

Rails.application.routes.draw do
  get "watch", to: "watch#index"

  root to: "index#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
