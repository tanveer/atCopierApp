class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :code
      t.text :description
      t.references :model, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
