class CreateUsers < ActiveRecord::Migration[5.2]


  def change
    create_table :users do |t|

    	t.string :first_name 
    	t.string :last_name
    	t.string :email
		t.timestamps
    end
end

def article

     create_table :article do |t|

  		t.string :title
    	t.string :content
    	t.belongs_to :users, index: true
		t.timestamps
	end
  end

  def like

     create_table :like do |t|

 		t.string :first_name 
    	t.string :last_name
    	t.string :email
    	t.belongs_to :article, index: true
		t.timestamps
	end
end


end
