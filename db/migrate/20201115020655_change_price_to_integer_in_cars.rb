class ChangePriceToIntegerInCars < ActiveRecord::Migration[6.0]
  def change
    change_column :cars, :price, :integer
  end
end
