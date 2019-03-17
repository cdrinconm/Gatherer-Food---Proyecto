class RecolectaspendientesController < ApplicationController
  def new
    @recolectaspendiente = Recolectaspendiente.new    
  end
  
  def create
    @recolectaspendiente = Recolectaspendiente.new(post_params)
    if @recolectaspendiente.save
        redirect_to recolectaspendiente_path(@recolectaspendiente)
    else
        render 'new'
    end
  end
  
  def edit
    @recolectaspendiente = Recolectaspendiente.find(params[:id])
  end
  
  def update
    @recolectaspendiente = Recolectaspendiente.find(params[:id])
    if @recolectaspendiente.update(post_params)
        redirect_to recolectaspendiente_path(@recolectaspendiente)
    else
        render 'edit'
    end
  end
  
  def index
    @recolectaspendiente = Recolectaspendiente.all
  end
  
  def destroy
    @recolectaspendiente = Recolectaspendiente.find(params[:id])
    @recolectaspendiente.destroy
    flash[:notice] = "La recolecta pendiente ha sido eliminada satisfactoriamente"
    redirect_to recolectaspendientes_path
  end
  
  def show
    @recolectaspendiente = Recolectaspendiente.find(params[:id])
  end
  
  private
    def post_params
      params.require(:recolectaspendiente).permit(:organizacion,:fecha,:direccion,:cantidadKilos)
    end
end