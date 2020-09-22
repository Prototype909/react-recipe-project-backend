  class RecipeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :image_url, :description, :instructions, :ingredients, :user_id, :comments, :likes
    has_many :ingredients
    belongs_to :user
  end