Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure' do
    flash[:notice] = params[:message]
    redirect '/'
  end

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :portfolios, except: [:show]
  get 'ruby-on-rails-portfolio', to: 'portfolios#ruby_on_rails'
  get 'vue-portfolio', to: 'portfolios#vue'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
