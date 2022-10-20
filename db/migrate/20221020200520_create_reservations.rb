class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :starting_day
      t.date :finish_day
      t.string :city

      t.timestamps
    end
  end
end
