class RecolectasrealizadasController < ApplicationController
  def new
    @recolectasrealizada = Recolectasrealizada.new    
  end
  
  def create
    @recolectasrealizada = Recolectasrealizada.new(post_params)
    if @recolectasrealizada.save
        redirect_to recolectasrealizada_path(@recolectasrealizada)
    else
        render 'new'
    end
  end
  
  def show
    @recolectasrealizada = Recolectasrealizada.find(params[:id])
  end
  
  private
    def post_params
      params.require(:recolectasrealizada).permit(:organizacion,:fecha,:direccion,:cantidadKilos)
    end
end