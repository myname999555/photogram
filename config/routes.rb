Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('fotos/:random', {:controller => 'fotos', :action => 'show'})


end
