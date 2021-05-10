class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.integer :sender_id, null: false, references: :accounts
      t.integer :receipient_id, null: false, references: :accounts

      t.timestamps
    end
  end
end
