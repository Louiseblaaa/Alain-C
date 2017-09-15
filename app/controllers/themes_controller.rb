class ThemesController < ApplicationController
  before_action :set_theme, only: [:edit, :update, :show, :destroy]

  def index
    @themes = Theme.all
  end

  def show
    @theme
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save
      redirect_to @theme
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @theme.update(theme_params)
      redirect_to theme_path
    else
      render :edit
    end
  end

  def destroy
    @theme.destroy
    redirect_to themes_path
  end

  private

  def set_theme
    @theme = Theme.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(:title, :description, :photo, :created_at, :updated_at)
  end
end
