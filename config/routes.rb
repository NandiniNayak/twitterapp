Rails.application.routes.draw do
  resources :tweets do
    member do
      put "like",to:'tweets#vote'
    end

    # put directs to controller and upvote
  end
  devise_for :users
  root 'pages#feed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
