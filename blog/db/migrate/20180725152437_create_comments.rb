# Créer une table comments avec une relation users et articles

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true
      t.timestamps
    end
  end
end
