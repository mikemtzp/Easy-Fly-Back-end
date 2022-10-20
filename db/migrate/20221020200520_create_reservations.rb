class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :jet, null: false, foreign_key: true
      t.string :starting_day
      t.string :finish_day
      t.string :city

      t.timestamps
    end
  end
end
