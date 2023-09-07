class AddStatustoPharmacies < ActiveRecord::Migration[7.0]
  def change
    add_column :pharmacies, :status, :boolean
  end
end
