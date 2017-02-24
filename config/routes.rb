Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "temats#index"
  get '/spis' => 'temats#spis'
  resources :temats do
  resources :comments, module: :temats
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
