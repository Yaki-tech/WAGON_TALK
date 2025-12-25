class CreateSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :sessions do |t|
      t.references :deck, null: false, foreign_key: true
      t.jsonb :shuffled_order, default: []
      t.integer :current_index, default: 0
      t.string :session_token, null: false

      t.timestamps
    end

    add_index :sessions, :session_token, unique: true
  end
end
