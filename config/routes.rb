Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v1 do
      resources :jobs
      resources :companies do
        # var.1 - :company_id
        match 'mark_deleted', to: 'companies/mark_deleted', via: :put
        resources :jobs
      end
      # var.2 - :id
      match '/:id/mark_deleted', to: 'companies#mark_deleted', via: :put
    end
  end

  match "*path", to: "application#catch_404", via: :all

end
# match 'publish',         to: 'group_events#publish',         via: 'put'
