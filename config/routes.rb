require 'api_constraints'

Rails.application.routes.draw do
  scope module: :v1, constraints: ApiConstraints.new(version: "1", default: true), defaults: { format: :html } do
    root :to => 'root#index'

    namespace :accounts do
        scope :login do
            get '' => :'login', as: :login
        end
        scope :logedin do
            post '' => :'logedin', as: :logedin
        end
        scope :logout do
            get '' => :'logout', as: :logout
        end
    end

    resources :search, only: [:index, :show, :search]
    # scope :users do
    #   users get    ''                     => 'users#index',                                 as: :users_index
    #   get    ':major,:minor'        => 'users#show_by_major_and_minor',               as: :users_show_by_major_and_minor
    #   get    ':major,:minor/kanban' => 'users#show_by_major_and_minor_within_kanban', as: :users_show_by_major_and_minor_within_kanban
    #   user get    ':id'                  => 'users#show',                                  as: :users_show
    #   post   ''                     => 'users#create',                                as: :users_create
    #   put    ''                     => 'users#update',                                as: :users_update
    #   delete ''                     => 'users#destroy',                               as: :users_destroy
    # end

    resources :users
    resources :room
    resources :teams
    resources :projects
  end
end
