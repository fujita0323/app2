Rails.application.routes.draw do

  resources :post_images, only: [:show, :edit]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  devise_for :users
 root :to => 'homes#top'
 get 'top' => 'homes#top'
 get '/homes/about' => 'homes#about', as: 'about'
end

#   Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
#   root to: 'homes#top'
#   devise_for :users
  
#   resources :post_images, only: [:new, :index, :show]
#   get "/homes/about" => "homes#about", as: "about"
# end. この違いは？
