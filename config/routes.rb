Rails.application.routes.draw do
  #TOPページ 
  root to: 'top#index'
  # コート数と人数のページ
  get '/setup', to: 'setup#index', as: 'setup'
  # メンバー詳細画面
  get '/setting', to: 'setting#index', as: 'setting'
  # play画面
  get '/play', to: 'play#index', as: 'play'
end
