class RemoveTypeToFinancial < ActiveRecord::Migration[5.2]
  def change
    add_column :financials, :type_financial, :integer
    remove_column :financials, :type, :integer
  end
end
