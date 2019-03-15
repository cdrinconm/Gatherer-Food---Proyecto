class RecolectasrealizadasController < ApplicationController
  def new
    @Recolectasrealizadas = Recolectasrealizadas.new    
  end
  
  def create
    @Recolectasrealizadas = Recolectasrealizadas.new(post_params)
    if @Recolectasrealizadas.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@Recolectasrealizadas)
    else
        render 'new'
    end
  end
  
  def show
    @Recolectasrealizadas = Recolectasrealizadas.find(params[:id])
  end
  
  private
    def post_params
      params.require(:recolectaspendientes).permit(:organizacion,:fecha,:direccion,:cantidadKilos)
    end
end