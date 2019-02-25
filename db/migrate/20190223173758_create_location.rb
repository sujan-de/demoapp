class CreateLocation < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.float :zoom
      t.integer :user_id, index: true
      t.timestamps
    end
  end
end
