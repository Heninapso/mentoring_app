class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.references :chat_room, foreign_key: true
      t.string :content
      t.string :avatar_url

      t.timestamps
    end
  end
end
