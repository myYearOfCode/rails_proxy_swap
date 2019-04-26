Rails.application.routes.draw do
  get '*path', to: 'catchall#index'
end
