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
 
  
  def edit
    @representante = Representante.find(params[:id])
  end
  
  def update
    @representante = Representante.find(params[:id])
    if @representante.update(post_params)
        redirect_to representante_path(@representante)
    else
        render 'edit'
    end
  end
  
  def index
    @representante = Representante.all
  end
  
  def destroy
    @representante = Representante.find(params[:id])
    @representante.destroy
    flash[:notice] = "El representante ha sido eliminado satisfactoriamente"
    redirect_to representantes_path
  end
  
  def show
    @representante = Representante.find(params[:id])
  end
  
  private
    def post_params
      params.require(:representante).permit(:nombre,:apellido,:edad,:telefono,:organizacion)
    end
end