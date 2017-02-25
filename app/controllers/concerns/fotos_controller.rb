class FotosController < ApplicationController
  def show
    @foto=Foto.all.sample
    @foto1=Foto.all.sample
    @foto2=Foto.all.sample
    @foto3=Foto.all.sample
    @foto4=Foto.all.sample
    @foto5=Foto.all.sample
    render('show.html.erb')

  end

end
