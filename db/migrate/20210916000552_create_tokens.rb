class CreateTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.integer :project_id

      t.timestamps
    end
    add_index :items, :project_id
  end
end
