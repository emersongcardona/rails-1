class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.decimal :model
      t.string :brand
      t.decimal :diver_id

      t.timestamps
    end
  end
end
