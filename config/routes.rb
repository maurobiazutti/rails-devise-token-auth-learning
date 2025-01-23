require "api_constraints"

Rails.application.routes.draw do
  # root "posts#index"
  namespace :api, defaults: { format: :json } do
    scope module: :v1,
      constraints: ApiConstraints.new(version: 1, default: false) do
      resources :articles
    end

    scope module: :v2,
      constraints: ApiConstraints.new(version: 2, default: true) do
      resources :articles
    end
  end
end

# blog/api/v1/articles: default = false version = 1
# blog/api/v2/articles: default = true version = 2