class RepresentantesController < ApplicationController
  def new
    @Representantes = Representantes.new    
  end
  
  def create
    @Representantes = Representantes.new(post_params)
    if @Representantes.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@Representantes)
    else
        render 'new'
    end
  end
  
  def show
    @Representantes = Representantes.find(params[:id])
  end
  
  private
    def post_params
      params.require(:representantes).permit(:nombre,:apellido,:edad,:telefono,:organizacion)
    end
end