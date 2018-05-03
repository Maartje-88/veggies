class CreateVeggies < ActiveRecord::Migration[5.1]
  def change
    create_table :veggies do |t|
      t.string :name

      t.timestamps
    end
  end
end
