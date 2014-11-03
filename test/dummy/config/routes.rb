Rails.application.routes.draw do

  mount SimpleFormInputs::Engine => "/simple_form_inputs"

  root :to => "home#index"

  resources :balls

end
