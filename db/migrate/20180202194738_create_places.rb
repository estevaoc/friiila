class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :address
      t.string :place_name
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
