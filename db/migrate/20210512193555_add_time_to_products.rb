class AddTimeToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :time, :string
  end
end
