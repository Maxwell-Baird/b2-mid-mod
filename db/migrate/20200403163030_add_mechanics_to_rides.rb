class AddMechanicsToRides < ActiveRecord::Migration[5.1]
  def change
    add_reference :rides, :mechanic, foreign_key: true
  end
end
