class CreateRans < ActiveRecord::Migration[5.0]
  def change
    create_table :rans do |t|
      t.string :name
      t.references :cars, foreign_key: true

      t.timestamps
    end
  end
end
