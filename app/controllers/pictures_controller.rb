class PicturesController < ApplicationController
  before_action :set_theme
  before_action :set_picture, only: [:edit, :update, :show, :destroy]

  def index
    @oictures = Picture.all
  end

  def show
    @picture
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = @theme.pictures.new(picture_params)
    if @picture.save
      redirect_to @picture
    else
      render :new
    end
  end

  def edit
  end

   def update
    if @picture.update(picture_params)
      redirect_to theme_picture_path
    else
      render :edit
    end
  end

  def destroy
    @picture.destroy
    redirect_to theme_pictures_path
  end

  private

  def set_picture
    @theme = set_theme
    @picture = @theme.pictures.find(params[:id])
  end

  def set_theme
    @theme = Theme.find(params[:id])
  end


  def picture_params
    params.require(:picture).permit(:title, :description, :photo, :created_at, :updated_at)
  end
end
