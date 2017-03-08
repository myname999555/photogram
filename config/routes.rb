Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('fotos/new', {:controller => 'fotos', :action => 'new'})

  get('fotos/:random', {:controller => 'fotos', :action => 'random'})

  get('fotodetails/:id', {:controller => 'fotos', :action => 'show'})

  get('/create_foto', {:controller => 'fotos', :action => 'create'})

  get('/fotoslist', {:controller => 'fotos', :action => 'index'})

  get('/fotosremove/:id', {:controller => 'fotos', :action => 'remove'})

  get('/edit_ur_foto/:id', {:controller => 'fotos', :action => 'edit'})

  get('/update_foto/:id', {:controller => 'fotos', :action => 'update'})

end
