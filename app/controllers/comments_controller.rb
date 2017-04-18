class CommentsController < ApplicationController


  def show
    @comment=Comment.find(params['id'])
    @foto=Foto.find(@comment.foto_id)
    render('show.html.erb')
  end

  def new
    render(
    'new.html.erb'
    )
  end

  def create
    f=Comment.new
    f.text=params['text']
    f.foto_id=params['foto_id']
    f.save
    redirect_to "/Brag_about_your_awesome_mathcats_to_other_dumb_cats/#{f.id}"
  end

end
