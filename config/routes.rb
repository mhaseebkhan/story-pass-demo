StoryPassDemo::Application.routes.draw do


  devise_for :users, :controllers => { :registrations => "users/registrations" },path_names: {sign_in: "login", sign_out: "logout"}

  #devise_scope :user do
  #  get "sign_in", :to => "devise/sessions#new"
  #end
  root to: 'high_voltage/pages#show', id: 'home'
  # get '/pages/show-grabled-image' => 'high_voltage/pages#show', id: 'show-grabled-image'

  get 'show-grabled-image', controller: 'images', action: "show_grabled_image", as: "show_grabled_image"
end
