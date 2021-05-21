Rails.application.routes.draw do
  root "topics#index"
  # resources :topics

  resources :topics do
    member do
      post 'upvote'
      delete 'downvote'
    end
  end
  # resources :topics, except:[:new,:create] =>dont generate "new" and "create" only rhe rest verbs actions
  # resources :topics, only:[:new,:create] => generate "new" and "create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "/about", to: "pages#about"
 # get "/contact", to: "pages#contact"  #pages is the PagesController
end
