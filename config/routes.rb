Rails.application.routes.draw do
  get '/param_page' => 'pages#param_page'
  get '/button_click' => 'pages#button_click'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
