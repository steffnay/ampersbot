Rails.application.routes.draw do
  # get 'images/ampers', to: 'images#show', as: 'image_show'
  get 'quotes/ampers', to: 'quotes#show', as: 'quotes_show'
end
