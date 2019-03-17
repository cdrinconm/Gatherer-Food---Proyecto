class PuntodeentregaController < ApplicationController
  def new
    @puntodeentrega= Puntodeentrega.new
  end
  
  def create
    @puntodeentrega= Puntodeentrega.new(post_params)
    if @puntodeentrega.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@puntodeentrega
    else
        render 'new'
    end
  end
  
  def show
    @puntodeentrega= Puntodeentrega.find(params[:id])
  end
  
  private
    def post_params
      params.require(:puntodeentregas).permit(:nombre,:habitantesBeneficiados,:ubicacion)
    end
end