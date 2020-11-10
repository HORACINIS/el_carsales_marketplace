class RemoveUserFkFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_reference :cars, :user, index: true, foreign_key: true
  end
end
