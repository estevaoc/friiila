class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true
      t.boolean :paid

      t.timestamps
    end
  end
end
