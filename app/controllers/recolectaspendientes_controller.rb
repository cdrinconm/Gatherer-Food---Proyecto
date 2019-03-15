class RecolectasrpendientesController < ApplicationController
  def new
    @Recolectasrpendientes = Recolectasrpendientes.new    
  end
  
  def create
    @Recolectasrpendientes = Recolectasrpendientes.new(post_params)
    if @Recolectasrpendientes.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@Recolectasrpendientes)
    else
        render 'new'
    end
  end
  
  def show
    @Recolectasrpendientes = Recolectasrpendientes.find(params[:id])
  end
  
  private
    def post_params
      params.require(:recolectaspendientes).permit(:organizacion,:fecha,:direccion,:cantidadKilos)
    end
end