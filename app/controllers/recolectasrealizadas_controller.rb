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
  
  def edit
    @recolectasrealizada = Recolectasrealizada.find(params[:id])
  end
  
  def update
    @recolectasrealizada = Recolectasrealizada.find(params[:id])
    if @recolectasrealizada.update(post_params)
        redirect_to recolectasrealizada_path(@recolectasrealizada)
    else
        render 'edit'
    end
  end
  
  def index
    @recolectasrealizada = Recolectasrealizada.all
  end
  
  def destroy
    @recolectasrealizada = Recolectasrealizada.find(params[:id])
    @recolectasrealizada.destroy
    flash[:notice] = "La recolecta realizada ha sido eliminada satisfactoriamente"
    redirect_to recolectasrealizadas_path
  end
  
  def show
    @recolectasrealizada = Recolectasrealizada.find(params[:id])
  end
  
  private
    def post_params
      params.require(:recolectasrealizada).permit(:organizacion,:fecha,:direccion,:cantidadKilos)
    end
end