class AddUuid < ActiveRecord::Migration[7.0]
  def change
    add_column :letters, :uuid, :integer
    add_column :action_text_rich_texts, :uuid, :integer
  end
end