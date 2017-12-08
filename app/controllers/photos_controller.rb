class PhotosController < ApplicationController
before_action :authenticate_user!
before_action :photo_set, only:[:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    params[:photo][:user_id] = current_user.id
    params[:photo][:category_id] = params[:category_id]
    @photo = Photo.create(photo_params)
    redirect_to photos_path
  end

  def edit
  end

  def update
    params[:photo][:user_id] = @photo.user_id
    params[:photo][:category_id] = @photo.category_id
    @photo.update(photo_params)
    redirect_to 'photos'
  end

  def destroy
    @photo.destroy
    redirect_to photos_path
  end

private

  def photo_params
    params.require(:photo).permit(:user_id, :category_id, :name, :photo)
  end

  def photo_set
    @photo = Photo.find(params[:id])
  end

end
