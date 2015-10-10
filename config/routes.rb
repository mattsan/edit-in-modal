Rails.application.routes.draw do
  resources :boards, only: %i(index create update destroy) do
    resources :articles, only: %i(index)
  end

  resources :articles, only: %i(create update destroy)
end
