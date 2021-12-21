class AddSignUpCol < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :backup_email, :string
    add_column :users, :backup_phone, :string
  end
end
