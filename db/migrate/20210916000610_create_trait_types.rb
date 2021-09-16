class CreateTraitTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :trait_types do |t|
      t.integer :project_id
      t.string :name

      t.timestamps
    end
    add_index :trait_types, :project_id
  end
end
