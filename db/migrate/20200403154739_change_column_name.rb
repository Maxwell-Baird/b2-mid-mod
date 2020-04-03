class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :parks, :admisiions, :admissions
  end
end
