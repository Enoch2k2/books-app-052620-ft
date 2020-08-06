Rails.application.routes.draw do
  root to: 'static#home'
  resources :genres
  resources :authors
  resources :books # index new create show edit update destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

                    #   R    R   R    C     R     U      D
   # RESTful Routes: index show new create edit update destroy

    
end
