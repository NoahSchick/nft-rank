class CreateTraitValues < ActiveRecord::Migration[6.1]
  def change
    create_table :trait_values do |t|
      t.integer :trait_option_id
      t.integer :item_id

      t.timestamps
    end
    add_index :trait_values, :trait_option_id
    add_index :trait_values, :item_id
  end
end
