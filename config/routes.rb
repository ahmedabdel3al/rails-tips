Rails.application.routes.draw do
  resources :posts
  draw :web
  # draw :portal
  draw :api
end
