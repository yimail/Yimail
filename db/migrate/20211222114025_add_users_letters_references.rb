class AddUsersLettersReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :letters, :user, index: true
  end
end
