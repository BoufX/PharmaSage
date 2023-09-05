class AddDateToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :post_date, :string
  end
end
