class CreateJets < ActiveRecord::Migration[7.0]
  def change
    create_table :jets do |t|
      t.string :name
      t.integer :price_per_day
      t.text :description
      t.string :size
      t.string :category
      t.integer :finance_fee
      t.string :image

      t.timestamps
    end
  end
end
