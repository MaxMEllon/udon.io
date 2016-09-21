Rails.application.routes.draw do
  # mount SwaggerEngine::Engine, at: '/api-docs'

  get '/api' => redirect('/swagger/dist/index.html?url=/api-docs.json')

  namespace :admin do
    resources :shops
  end

  namespace :api do
    resources :shops
  end
end
