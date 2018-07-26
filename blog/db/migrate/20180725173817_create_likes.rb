# Créer une table likes avec une relation users et articles
class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user
      t.belongs_to :article
      t.timestamps
    end
  end
end
