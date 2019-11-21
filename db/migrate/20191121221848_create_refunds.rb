class CreateRefunds < ActiveRecord::Migration[5.0]
  def change
    create_table :refunds do |t|
      t.integer :amount, default: 0
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
