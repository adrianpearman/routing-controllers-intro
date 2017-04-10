Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome' => 'pages#welcome'
  get '/' => 'pages#welcome'

  #adding link for about us page
  get '/about' => 'pages#about'

  #adding link for contest page
  get '/contest' => 'pages#contest'

  #adding link for kitten page
  get '/kitten' => 'pages#kitten'

  #add method to pull itten photo by size
  get '/kitten/:size' => 'pages#kitten'

  #add method to display multiple photos to the page
  get '/kittens' => 'pages#kittens'

end
