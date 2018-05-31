class AddColumnToProjectsTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :projects, :c_id, :integer
  end
end
