Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :restaurants
    resources :products
    resources :menus
    resources :favorites
    resources :categories
    resources :suscriptions

    root to: "users#index"
  end
  resources :suscriptions
  resources :menus
  resources :restaurants
  resources :brands
  get "favorites/create"

  namespace :authentication, path: "", as: "" do
    resources :users,
              only: %i[new create],
              path: "/register",
              path_names: {
                new: "/"
              }
    resources :sessions,
              only: %i[new create destroy],
              path: "/login",
              path_names: {
                new: "/"
              }
  end
  get "pages/index"
  get "pages/faq"
  get "pages/contact"
  get "pages/home"
  get "pages/blog"
  get "pages/about"
  resources :favorites, only: %i[index create destroy], param: :product_id
  resources :users, only: :show, path: "/user", param: :username
  resources :categories, except: :show
  resources :products
  root "pages#index"

  PagesController.action_methods.each do |action|
    get "/#{action}", to: "pages##{action}", as: "#{action}_page"
  end
end
