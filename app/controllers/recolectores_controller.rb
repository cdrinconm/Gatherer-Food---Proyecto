class RecolectoresController < ApplicationController
  def new
    @recolectore = Recolectore.new    
  end
  
  def create
    @recolectore = Recolectore.new(post_params)
    if @recolectore.save
        redirect_to recolectore_path(@recolectore)
    else
        render 'new'
    end
  end
  
  def edit
    @recolectore = Recolectore.find(params[:id])
  end
  
  def update
    @recolectore = Recolectore.find(params[:id])
    if @recolectore.update(post_params)
        redirect_to recolectore_path(@recolectore)
    else
        render 'edit'
    end
  end
  
  def index
    @recolectore = Recolectore.all
  end
  
  def destroy
    @recolectore = Recolectore.find(params[:id])
    @recolectore.destroy
    flash[:notice] = "El recolector ha sido eliminado satisfactoriamente"
    redirect_to recolectores_path
  end  
  
  def show
    @recolectore = Recolectore.find(params[:id])
  end
  
  private
    def post_params
      params.require(:recolectore).permit(:nombre,:apellido,:telefono,:correo)
    end
end