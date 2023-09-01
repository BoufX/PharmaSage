class AddPhoneToPharmacies < ActiveRecord::Migration[7.0]
  def change
    add_column :pharmacies, :phone_number, :string
  end
end
