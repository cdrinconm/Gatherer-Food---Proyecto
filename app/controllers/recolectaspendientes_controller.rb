class RecolectaspendientesController < ApplicationController
  def new
    @recolectaspendiente = Recolectaspendiente.new    
  end
  
  def create
    @recolectaspendiente = Recolectaspendiente.new(post_params)
    if @recolectaspendiente.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@recolectaspendiente)
    else
        render 'new'
    end
  end
  
  def show
    @recolectaspendiente = Recolectaspendiente.find(params[:id])
  end
  
  private
    def post_params
      params.require(:recolectaspendiente).permit(:organizacion,:fecha,:direccion,:cantidadKilos)
    end
end