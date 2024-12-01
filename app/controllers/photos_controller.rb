class PhotosController < ApplicationController
  def create
    @collection = Collection.find(params[:collection_id])
    @photo = @collection.photos.create(photo_params)
    redirect_to collection_path(@collection)
  end

  def show

  end

  def update

  end

  def destroy
    @collection = Collection.find(params[:collection_id])
    @photo = @collection.photos.find(params[:id])
    @photo.destroy
    redirect_to collection_path(@collection)
  end

  private
    def photo_params
      params.require(:photo).permit(:image)
    end
end
