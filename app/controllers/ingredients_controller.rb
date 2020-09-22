class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.where(recipe_id: params[:recipe_id])
        render json: IngredientSerializer.new(@ingredients).serialized_json, status: :ok
    end

    def show
        @ingredient = find_by(id: params[:id])
        render json: IngredientSerializer.new(@ingredient).serialized_json, status: :ok
    end

    def create
        if params[:recipe_id]
            @recipe = Recipe.find_by(recipe_id: params[:recipe_id])
            @ingredient = @recipe.ingredients.build(ingredient_params)
            if @ingredient.save
                render json: IngredientSerializer.new(@ingredient).serialized_json, status: :ok
            else
                error_resp = {
                    error: @ingredient.errors.full_messages.to_sentence
                }
                render json: error_resp, status: :unprocessable_entity
            end
        end
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :quanity, :unit, :recipe_id)
    end
end