class CreateUsers < ActiveRecord::Migration[5.2]


  def change
    create_table :users do |t|

      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end

    create_table :articles do |t|

      t.string :title
      t.string :content
      t.belongs_to :users, index: true
      t.timestamps
    end

    create_table :likes do |t|

      t.string :users
      t.belongs_to :articles, index: true
      t.timestamps
    end



  end
end
