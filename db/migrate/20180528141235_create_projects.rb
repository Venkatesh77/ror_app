class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
    	t.string :title
    	t.string :description
    	t.string :details
    	t.integer :user_id

      t.timestamps
    end
  end
end
