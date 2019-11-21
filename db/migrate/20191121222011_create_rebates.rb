class CreateRebates < ActiveRecord::Migration[5.0]
  def change
    create_table :rebates do |t|
      t.string :rebate_name
      t.text :description
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
