Rails.application.routes.draw do

  root to: 'home#index'

  get '/mission' , to: 'home#mission' , as: :'mission_path'

  get '/realisation' , to: 'home#realisation' , as: :'realisation_path'

  get 'partenaire' , to: 'home#partenaire', as: :'partenaire_path'

  get 'garanties' , to: 'home#garanties' , as: :'garenties_path'

  get 'contact' , to: 'home#contact' , as: :'contact_path'
end
