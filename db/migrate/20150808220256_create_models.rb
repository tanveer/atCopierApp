class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.references :make, index: true, foreign_key: true
      t.timestamps null: false
    end
    # add_index :models, [:make_id]
  end
end
