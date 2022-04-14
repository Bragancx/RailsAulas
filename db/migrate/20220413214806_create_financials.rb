class CreateFinancials < ActiveRecord::Migration[5.2]
  def change
    create_table :financials do |t|
      t.string :name
      t.integer :type
      t.float :value

      t.timestamps
    end
  end
end
