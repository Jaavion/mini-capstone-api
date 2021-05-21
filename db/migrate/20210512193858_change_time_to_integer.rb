class ChangeTimeToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :time, "numeric USING CAST(time AS numeric)"
    change_column :products, :time, :decimal,  precision: 7, scale: 2
  end
end
