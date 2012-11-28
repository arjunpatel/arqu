class AddMoreFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :native_language, :string
  end
end
