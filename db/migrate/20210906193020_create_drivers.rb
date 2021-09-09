class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.timestamps
    end
    add_reference :cars, :drivers, foreign_key: true
  end

end
