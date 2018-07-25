class CreateTableLike < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|

      t.string :users
      t.belongs_to :articles, index: true
      t.timestamps
    end
  end
end
