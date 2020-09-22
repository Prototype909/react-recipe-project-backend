class Ingredient < ApplicationRecord
    belongs_to :recipes, optional: true
    validates :name, :quantity, presence: true
end