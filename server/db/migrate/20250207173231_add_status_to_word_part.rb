class AddStatusToWordPart < ActiveRecord::Migration[8.0]
  def change
    add_column :word_parts, :status, :string, null: true, default: nil
  end
end
