class	ArtigosController	<	ApplicationController
  def	show
    @artigo	=	Artigo.find(params[:id])
  end

  def create
    @artigo = Artigo.new(artigo_params)
    @artigo.save
  end

  private

  def artigo_params
    params.require(:artigo).permit(:nome, :conteudo)
  end
end
