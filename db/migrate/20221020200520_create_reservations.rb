class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :starting_day
      t.string :finish_day
      t.string :city

      t.timestamps
    end
  end
end
