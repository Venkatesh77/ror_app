# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(name: 'user1',address: 'saidapet', email: 'user1@gmail.com', password: '12345')
User.create(name: 'user2',address: 'tnagr', email: 'user2@gmail.com', password: '12345')
User.create(name: 'user3',address: 'adyar', email: 'user3@gmail.com', password: '12345')


Category.destroy_all
Category.create(:name => "alpha_type", :details => "alpha reqires less testing")
Category.create(:name => "beta_type", :details => "beta reqires less testing")
Category.create(:name => "gamma_type", :details => "gamma reqires less testing")

Project.destroy_all
Project.create(:title => "project_first", :description => "first", :details => "hat", :user_id => 1, :category_id => 1)
Project.create(:title => "project_second", :description => "second", :details => "hat", :user_id => 2, :category_id => 2)
Project.create(:title => "project_third", :description => "third", :details => "hat", :user_id => 3, :category_id => 3)
Project.create(:title => "project_fourth", :description => "fourth", :details => "hat", :user_id => 1, :category_id => 1)