class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show

  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      render json: @collection
    else
      render json: {error: "Error creating collection"}
    end
  end

  def destroy
    @collection = Collection.find(params[:id])
    @collection.destroy
    render json: {message: "Collection deleted"}
  end
end
