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
  
  def show
    @puntodeentrega= Puntodeentrega.find(params[:id])
  end
  
  private
    def post_params
      params.require(:puntodeentrega).permit(:nombre,:habitantesBeneficiados,:ubicacion)
    end
end