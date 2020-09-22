class IngredientSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :quantity, :unit, :recipe_id
    belongs_to :recipe
  end