class AddAmountToBenefit < ActiveRecord::Migration[5.2]
  def change
    add_column :benefits, :amount, :float
  end
end
