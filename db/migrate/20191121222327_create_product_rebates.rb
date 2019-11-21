class CreateProductRebates < ActiveRecord::Migration[5.0]
  def change
    create_table :product_rebates do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :rebate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
