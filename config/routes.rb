Rails.application.routes.draw do
  namespace :admin do
    resources :shops
  end
end
