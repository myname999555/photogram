class FotosController < ApplicationController
  def random
    @foto=Foto.all.sample
    @foto1=Foto.all.sample
    @foto2=Foto.all.sample
    @foto3=Foto.all.sample
    @foto4=Foto.all.sample
    @foto5=Foto.all.sample
    render('random.html.erb')

  end


  def show
    @foto=Foto.find(params['id'])
    render('show.html.erb')

  end


  def new

    render('new.html.erb')

  end


  def create
    f=Foto.new
    f.image_url=params['image_url']
    f.caption=params['caption']
    f.save
    redirect_to "/fotodetails/#{f.id}"
  end


  def index
    @list_of_all_the_fotos=Foto.all
    render('index.html.erb')
  end


  def remove
      @foto=Foto.find(params['id'])
      @foto.destroy
      redirect_to "/fotoslist"
  end


  def edit
    @foto=Foto.find(params['id'])
    render('edit_ur_foto.html.erb')
  end


  def update
    f=Foto.find(params['id'])
    f.image_url=params['image_url']
    f.caption=params['caption']
    f.save
    redirect_to "/fotodetails/#{f.id}"
  end

end
