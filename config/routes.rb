Rails.application.routes.draw do

  root to: 'home#index' , as: :presentation

  get '/mission' , to: 'home#mission' , as: :mission

  get '/realisation' , to: 'home#realisation' , as: :realisation

  get '/partenaire' , to: 'home#partenaire', as: :partenaire

  get '/garanties' , to: 'home#garanties' , as: :garanties

  get '/contact' , to: 'home#contact' , as: :contact
end
