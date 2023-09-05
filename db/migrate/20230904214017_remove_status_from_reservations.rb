class RemoveStatusFromReservations < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :status
  end
end
