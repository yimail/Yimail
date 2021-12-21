class RemoveUuid < ActiveRecord::Migration[7.0]
  def change
    remove_column :letters, :uuid, :integer
    remove_column :action_text_rich_texts, :uuid, :integer
  end
end
