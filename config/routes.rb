Rails.application.routes.draw do
  resources :gdkds
  resources :cancer_targets
  resources :pmkbs
  resources :mycanergenomes
  resources :civics
  resources :dgidbs
  resources :oncokbs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'home_pages#home'
  # root 'oncokbs#index'
  root 'oncokbs#index'
  get  'oncokb/index', to: 'oncokbs#index'
  get  'dgidb/index', to: 'dgidbs#index'
  get  'civic/index', to: 'civics#index'
  get  'pmkb/index', to: 'pmkbs#index'
  get  'mycanergenome/index', to: 'mycanergenomes#index'
  get  'gdkd/index', to: 'gdkds#index'
  get  '/index', to: 'cancer_targets#index'
  get  '/help',    to: 'home_pages#help'
  get  '/home',   to: 'home_pages#home'
end