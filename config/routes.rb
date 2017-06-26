Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'ruby-on-rails-portfolio', to: 'portfolios#ruby_on_rails'
  get 'vue-portfolio', to: 'portfolios#vue'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'
  get 'tech-news', to: 'pages#tech_news'

  resources :topics, only: [:index, :show]

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  mount ActionCable.server => '/cable'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end