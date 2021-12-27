Rails.application.routes.draw do
  
  resources :skips
  root "tests#top"
end
