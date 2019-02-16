class RecipesController < ApplicationController
  before_action :find_recipe, only: [:destroy, :update, :edit, :show]

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @dose = Dose.new
    @comment = Comment.new
  end

  def edit
    # blabla
  end

  def update
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description, :picture)
  end
end
