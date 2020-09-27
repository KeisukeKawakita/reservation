Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  devise_for :admin, :controllers => {
    :registrations => 'admin/registrations',
    :sessions => 'admin/sessions'
  }

  scope module: :public do
  	root 'homes#top'
  	resource :end_users, only: [:show, :edit, :update]
  	resources :reservations
  	resources :days, only: [:show]
    resources :schedules, only: [:create, :edit, :update, :destroy]
  end

  namespace :admin do
    resources :end_users, only: [:index, :destroy]
  end

  devise_for :end_users, :controllers => {
    :registrations => 'public/registrations',
    :sessions => 'public/sessions'
  }
end
