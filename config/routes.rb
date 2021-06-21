Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sales#index'

  resources :sales, except: %i[:destroy :update :create :new :show] do
    post '/import', to: 'sales#import_sales', as: :import, on: :collection
  end
end
