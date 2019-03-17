class RestaurantesController < ApplicationController
  def new
    @restaurante = Restaurante.new
  end
  
  def create
    @restaurante = Restaurante.new(post_params)
    if @restaurante.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@restaurante)
    else
        render 'new'
    end
  end
  
  def show
    @restaurante = Restaurante.find(params[:id])
  end
  
  private
    def post_params
      params.require(:restaurante).permit(:nombre,:direccion,:representante,:telefonoRepresentante,:direccionUrl,:descripcion)
    end
end