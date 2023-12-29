class CreateCoupons < ActiveRecord::Migration[7.1]
  def change
    create_table :coupons do |t|
      t.string :code
      t.text :description
      t.float :discount
      t.date :expiration_date
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
