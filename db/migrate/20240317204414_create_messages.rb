class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages, id: :uuid do |t|
      t.references :chat, null: false, foreign_key: { on_delete: :cascade }, type: :uuid
      t.text :content, null: false
      t.integer :role, null: false, default: 0

      t.timestamps
    end
  end
end
