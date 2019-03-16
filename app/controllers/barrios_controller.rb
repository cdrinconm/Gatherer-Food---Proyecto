class BarriosController < ApplicationController
  def new
    @barrio = Barrios.new
  end
  
  def create
    @barrio = Barrios.new(post_params)
    if @barrio.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@barrio)
    else
        render 'new'
    end
  end
  
  def show
    @barrio = Barrios.find(params[:id])
  end
  
  private
    def post_params
      params.require(:barrios).permit(:nombre,:habitantesBeneficiados,:ubicacion)
    end
end