Rails.application.routes.draw do

  root to: 'home#index'

  get '/mission' , to: 'home#mission' , as: 'mission_path'
end
