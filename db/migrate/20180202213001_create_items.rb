class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :place, foreign_key: true
      t.integer :price
      t.string :product

      t.timestamps
    end
  end
end
