class CocktailsController < ApplicationController
  before_action :set_params, only: [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_params
    @cocktail = Cocktail.find(params[:id])
  end
end
