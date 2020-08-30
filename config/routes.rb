Rails.application.routes.draw do
  root to: 'statics#top'
  devise_for :users
end
