Ecm::OpeningTimes::Backend::Engine.routes.draw do
  resources :branches do
    post :reposition, on: :member
  end
  resources :entries

  root to: 'home#index'
end
