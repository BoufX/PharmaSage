class CreateAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :availabilities do |t|
      t.integer :amount
      t.references :medicine, null: false, foreign_key: true
      t.references :pharmacy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
