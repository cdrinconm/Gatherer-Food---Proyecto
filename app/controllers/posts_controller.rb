class PostsController < ApplicationController
  def new
    @post = Post.new    
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
        flash[:notice] = "El post se creo satisfactoriamente"
        redirect_to post_path(@post)
    else
        render 'new'
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  private
    def post_params
      params.require(:post).permit(:titulo,:descripcion)
    end
end