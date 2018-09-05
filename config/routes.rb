Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :contacts do
      collection do
          post :confirm
      end
  end
end
