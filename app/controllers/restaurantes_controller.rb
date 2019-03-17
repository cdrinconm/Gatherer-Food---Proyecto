class RestaurantesController < ApplicationController
  def new
    @restaurante = Restaurante.new
  end
  
  def create
    @restaurante = Restaurante.new(post_params)
    if @restaurante.save
        redirect_to restaurante_path(@restaurante)
    else
        render 'new'
    end
  end
  
  def edit
    @restaurante = Restaurante.find(params[:id])
  end
  
  def update
    @restaurante = Restaurante.find(params[:id])
    if @restaurante.update(post_params)
        redirect_to restaurante_path(@restaurante)
    else
        render 'edit'
    end
  end
  
  def index
    @restaurante = Restaurante.all
  end
  
  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy
    flash[:notice] = "El restaurante ha sido eliminado satisfactoriamente"
    redirect_to restaurantes_path
  end
  
  def show
    @restaurante = Restaurante.find(params[:id])
  end
  
  private
    def post_params
      params.require(:restaurante).permit(:nombre,:direccion,:representante,:telefonoRepresentante,:direccionUrl,:descripcion)
    end
end