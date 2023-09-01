class AddAmountToMedicines < ActiveRecord::Migration[7.0]
  def change
    add_column :medicines, :amount, :integer
  end
end
