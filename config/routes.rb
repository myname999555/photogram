Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('mathcats/new', {:controller => 'fotos', :action => 'new'})

  get('mathcats/:random', {:controller => 'fotos', :action => 'random'})

  get('mathcatsdetails/:id', {:controller => 'fotos', :action => 'show'})

  get('/create_mathkittens', {:controller => 'fotos', :action => 'create'})

  get('/mathcats_hall_of_fame', {:controller => 'fotos', :action => 'index'})

  get('/removebadmathcats/:id', {:controller => 'fotos', :action => 'remove'})

  get('/trade_your_mathcat_for_a_new_one/:id', {:controller => 'fotos', :action => 'edit'})

  get('/give_your_mathcat_some_better_stuff/:id', {:controller => 'fotos', :action => 'update'})

  get('/Brag_about_your_awesome_mathcats_to_other_dumb_cats/:id', {:controller => 'comments', :action => 'show'})

  get('/Start_Bragging_about_your_awesome_mathcat/:id', {:controller => 'comments', :action => 'new'})

  get('/New_Kinds_of_Ways_to_Brag', {:controller => 'comments', :action => 'create'})

end
