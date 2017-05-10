Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v1 do

      resources :jobs
      resources :companies do
        match 'mark_deleted', to: '/v1/companies/mark_deleted', via: :post
        resources :jobs
        # match 'mark_destroy', to: 'companies#mark_destroy', via: :post

      end
      match 'mark_deleted', to: '/v1/companies/mark_deleted', via: :post

      # match 'mark_destroy/:id', to: 'companies#mark_destroy', via: :post

    end
  end

  match "*path", to: "application#catch_404", via: :all

end
# match 'publish',         to: 'group_events#publish',         via: 'put'
