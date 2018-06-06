# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :welcome, only: %i[show create]

  mount Sidekiq::Web => '/sidekiq'
end
