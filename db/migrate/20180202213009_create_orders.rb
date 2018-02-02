class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :item, foreign_key: true
      t.references :bill, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
