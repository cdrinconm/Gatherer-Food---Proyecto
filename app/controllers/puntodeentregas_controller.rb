class PuntodeentregasController < ApplicationController
  def new
    @puntodeentrega= Puntodeentrega.new
  end
  
  def create
    @puntodeentrega= Puntodeentrega.new(post_params)
    if @puntodeentrega.save
        redirect_to puntodeentrega_path(@puntodeentrega)
    else
        render 'new'
    end
  end
  
  def edit
    @puntodeentrega = Puntodeentrega.find(params[:id])
  end
  
  def update
    @puntodeentrega = Puntodeentrega.find(params[:id])
    if @puntodeentrega.update(post_params)
        redirect_to puntodeentrega_path(@puntodeentrega)
    else
        render 'edit'
    end
  end
  
  def index
    @puntodeentrega = Puntodeentrega.all
  end
  
  def destroy
    @puntodeentrega = Puntodeentrega.find(params[:id])
    @puntodeentrega.destroy
    flash[:notice] = "El punto de entrega ha sido eliminado satisfactoriamente"
    redirect_to puntodeentregas_path
  end
  
  def show
    @puntodeentrega= Puntodeentrega.find(params[:id])
  end
  
  private
    def post_params
      params.require(:puntodeentrega).permit(:nombre,:habitantesBeneficiados,:ubicacion)
    end
end