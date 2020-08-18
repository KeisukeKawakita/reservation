Rails.application.routes.draw do
  devise_for :end_users, :controllers => {
  	:registrations => 'public/registrations',
  	:sessions => 'public/sessions'
  }

  scope module: :public do
  	root 'homes#top'
  	resource :end_users, only: [:show, :edit, :update]
  	resources :reservations
  	resources :days, only: [:show]
    resources :schedules, only: [:create]
  end
end
