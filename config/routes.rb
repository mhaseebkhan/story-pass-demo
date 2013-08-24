StoryPassDemo::Application.routes.draw do

  root to: 'high_voltage/pages#show', id: 'home'
  # get '/pages/show-grabled-image' => 'high_voltage/pages#show', id: 'show-grabled-image'

  get 'show-grabled-image', controller: 'images', action: "show_grabled_image", as: "show_grabled_image"
end
