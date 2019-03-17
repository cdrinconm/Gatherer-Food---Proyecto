class RepresentantesController < ApplicationController
  def new
    @representante = Representante.new    
  end
  
  def create
    @representante = Representante.new(post_params)
    if @representante.save
        redirect_to representante_path(@representante)
    else
        render 'new'
    end
  end
  
  def show
    @representante = Representante.find(params[:id])
  end
  
  private
    def post_params
      params.require(:representante).permit(:nombre,:apellido,:edad,:telefono,:organizacion)
    end
end