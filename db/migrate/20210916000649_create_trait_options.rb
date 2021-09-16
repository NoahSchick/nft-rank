class CreateTraitOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :trait_options do |t|
      t.integer :project_id
      t.integer :trait_type_id
      t.string :name

      t.timestamps
    end
    add_index :trait_options, :project_id
    add_index :trait_options, :trait_type_id
  end
end
