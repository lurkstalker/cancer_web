Rails.application.routes.draw do
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
  get  '/help',    to: 'home_pages#help'
  get  '/home',   to: 'home_pages#home'
end