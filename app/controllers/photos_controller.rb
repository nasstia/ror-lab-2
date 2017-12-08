class PhotosController < ApplicationController
before_action :authenticate_user!
<<<<<<< HEAD
before_action :photo_set, only:[:show, :edit, :update, :destroy, :vote]

  def index
    @photos = Photo.all
    @like = {}
    @photos.each do |photo|
      @vote = Vote.find_by_photo_id(photo.id)
      if !@vote.nil?
        @like[photo.id] = @vote.like
      end
    end
=======
before_action :photo_set, only:[:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
>>>>>>> df42636c40b5e9d81677e53d2aa62d7287317763
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

<<<<<<< HEAD
  def vote
    pp @photo = Photo.find(params[:id])
    pp @vote = Vote.find_by_photo_id(@photo.id)
    if @vote == nil
       @like = 1
       Vote.create(user_id: current_user.id, photo_id: @photo.id, like: @like)
     else
       @vote.update(like: @vote.like + 1)
    end
    redirect_to photos_path
  end

=======
>>>>>>> df42636c40b5e9d81677e53d2aa62d7287317763
private

  def photo_params
    params.require(:photo).permit(:user_id, :category_id, :name, :photo)
  end

  def photo_set
<<<<<<< HEAD
    pp @photo = Photo.find(params[:id])
=======
    @photo = Photo.find(params[:id])
>>>>>>> df42636c40b5e9d81677e53d2aa62d7287317763
  end

end
