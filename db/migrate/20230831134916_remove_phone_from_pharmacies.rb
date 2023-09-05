class RemovePhoneFromPharmacies < ActiveRecord::Migration[7.0]
  def change
    remove_column :pharmacies, :phone_number, :integer
  end
end
