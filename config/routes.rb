Rails.application.routes.draw do
  resources :pmkbs
  resources :mycanergenomes
  resources :civics
  resources :dgidbs
  resources :can_sar_cancer_gene_censuses
  resources :oncokbs
  resources :can_sar_cancer_gene_census
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'home_pages#home'
  # root 'oncokbs#index'
  root 'oncokbs#index'
  get  'oncokb/index', to: 'oncokbs#index'
  get  'dgidb/index', to: 'dgidbs#index'
  get  'civic/index', to: 'civics#index'
  get  'pmkb/index', to: 'pmkbs#index'
  get  'mycanergenome/index', to: 'mycanergenomes#index'
  get  '/index', to: 'can_sar_cancer_gene_censuses#index'
  get  '/help',    to: 'home_pages#help'
  get  '/home',   to: 'home_pages#home'
end