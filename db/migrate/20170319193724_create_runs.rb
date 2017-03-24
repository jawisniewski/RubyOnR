class CreateRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :runs do |t|
      t.string :name
      t.decimal :price
      t.decimal :distance
      t.integer :cars_id

      t.timestamps
    end
  end
end
