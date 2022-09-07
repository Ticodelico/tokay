Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/faq'
  get 'pages/contact'
  get 'pages/home'
  get 'pages/blog'
  get 'pages/about'
  resources :categories, except: :show
  resources :products
  root "products#index"
end
