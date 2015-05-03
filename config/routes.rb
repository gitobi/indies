require 'api_constraints'

Rails.application.routes.draw do
  scope module: :v1, constraints: ApiConstraints.new(version: "1", default: true), defaults: { format: :json } do
    resources :displays, only: [:show]
    scope :users do
      get    ''                     => 'users#index',                                 as: :users_index
      get    ':major,:minor'        => 'users#show_by_major_and_minor',               as: :users_show_by_major_and_minor
      get    ':major,:minor/kanban' => 'users#show_by_major_and_minor_within_kanban', as: :users_show_by_major_and_minor_within_kanban
      get    ':id'                  => 'users#show',                                  as: :users_show
      post   ''                     => 'users#create',                                as: :users_create
      put    ''                     => 'users#update',                                as: :users_update
      delete ''                     => 'users#destroy',                               as: :users_destroy
    end
    resources :kanbans , :except => [:new, :edit]
  end
end
