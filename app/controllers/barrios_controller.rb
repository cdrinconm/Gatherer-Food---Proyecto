class BarriosController < ApplicationController
  def new
    @Barrios = Barrios.new    
  end
  
  def create
    @Barrios = Barrios.new(post_params)
    if @Barrios.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@Barrios)
    else
        render 'new'
    end
  end
  
  def show
    @Barrios = Barrios.find(params[:id])
  end
  
  private
    def post_params
      params.require(:barrios).permit(:nombre,:habitantesBeneficiados,:ubicacion)
    end
end