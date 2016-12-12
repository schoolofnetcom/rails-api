class AddCategorieToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :categorie, index: true, foreign_key: true
  end
end
