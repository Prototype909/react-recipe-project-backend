class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.text :instructions
      t.integer :user_id
    end
  end
end
