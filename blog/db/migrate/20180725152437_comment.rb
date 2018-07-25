class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comment do |t|

      t.text :content
      t.timestamps
    end
  end
end
