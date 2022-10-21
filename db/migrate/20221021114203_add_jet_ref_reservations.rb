class AddJetRefReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :jet, null: false, foreign_key: { to_table: 'jets' }
  end
end
