class CreateAiRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :ai_requests do |t|
      t.text :prompt
      t.text :response
      t.string :status, default: "pending", null: false
      t.references :deck, foreign_key: true # nullable: deck créé seulement si succès
      t.jsonb :metadata

      t.timestamps
    end

    add_index :ai_requests, :status
  end
end
