class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

			t.string :name
			t.string :address
			t.string :city
			t.string :state
			t.integer :ph_number
			t.integer :pin_code


      t.timestamps
    end
  end
end
