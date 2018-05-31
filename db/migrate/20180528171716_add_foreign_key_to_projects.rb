class AddForeignKeyToProjects < ActiveRecord::Migration[5.1]
  def change
  	remove_column :projects, :user_id
  	remove_column :projects, :c_id
  	add_reference :projects, :user, index: true
  	add_reference :projects, :category, index: true
  end
end
