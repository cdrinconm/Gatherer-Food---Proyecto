class OrganizacionesController < ApplicationController
  def new
    @Organizaciones = Organizaciones.new    
  end
  
  def create
    @Organizaciones = Organizaciones.new(post_params)
    if @Organizaciones.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@Organizaciones)
    else
        render 'new'
    end
  end
  
  def show
    @Organizaciones = Organizaciones.find(params[:id])
  end
  
  private
    def post_params
      params.require(:organizaciones).permit(:nombre,:direccion,:representante,:telefonoRepresentante,:direccionUrl,:descripcion)
    end
end