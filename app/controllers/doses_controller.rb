class DosesController < ApplicationController

  def new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save # => true
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  # def edit
  #   @dose = Dose.find(params[:id])
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @ingredients = Ingredient.all
  # end

  # def update
  #   @dose = Dose.find(params[:id])
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose.cocktail = @cocktail
  #   @dose.update(doses_params)
  #   redirect_to cocktail_path(@cocktail)
  # end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
