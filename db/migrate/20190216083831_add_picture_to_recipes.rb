class AddPictureToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :picture, :text
  end
end
