Rails.application.routes.draw do

  root 'products#index'

  resources :products

  namespace 'api' do
    namespace 'v1' do
      resources :products
    end
  end
end
