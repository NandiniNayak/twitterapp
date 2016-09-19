Rails.application.routes.draw do
  resources :profiles
  get "hashtags/:hashtag",   to: "hashtags#show",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags
  resources :tweets do
    member do
      put "like",to:'tweets#vote'
      # put "follow", to: "tweets#follow"
      # put "unfollow", to: "user#downvote"
    end


    # put directs to controller and upvote
  end
  devise_for :users
  root 'pages#feed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
