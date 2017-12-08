class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :image_set, only:[:destroy]

  def index
    @images = Image.all
  end

  def new
  end

  def create
    @user = current_user

    if params[:images]
      params[:images].each {|image|
        @files = @user.images.create(image: image)
      }
    end
    redirect_to images_path
  end

  def destroy
    @image.destroy
    redirect_to images_path
  end

private

  def image_params
    params.require(:images).permit(:user_id, :image)
  end

  def image_set
    pp @image = Image.find(params[:id])
  end

end
