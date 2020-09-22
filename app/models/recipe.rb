class Recipe < ApplicationRecord
    belongs_to :user, optional: true
    has_many :comments
    has_many :likes
    has_many :ingredients
    validates :name, :image_url, :description, :instructions, presence: true

    accepts_nested_attributes_for :ingredients

end