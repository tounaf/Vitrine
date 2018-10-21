Rails.application.routes.draw do

  root to: 'home#index' , as: :acceuil

  get '/mission' , to: 'home#mission' , as: :mission

  get '/presentation' , to: 'home#presentation' , as: :presentation

  get '/partenaire' , to: 'home#partenaire', as: :partenaire

  get '/garanties' , to: 'home#garanties' , as: :garanties

  # get '/contact' , to: 'home#contact' , as: :contact

  post '/send-email' , to: 'home#sendemail' , as: :sendemail

end
