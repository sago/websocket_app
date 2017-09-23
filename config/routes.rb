Rails.application.routes.draw do
  get 'notifier/show'

  root 'notifier#show'# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
