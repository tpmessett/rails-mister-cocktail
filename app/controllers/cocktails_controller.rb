class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    find_cocktail
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render(:new)
    end
  end

  def edit
    find_cocktail
  end

  def update
    find_cocktail
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :description)
  end
end
