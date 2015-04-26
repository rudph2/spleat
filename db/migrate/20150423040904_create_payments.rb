class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to :user_tab, index: true
      t.decimal :value
      t.boolean :success_status
      t.datetime :payment_date
      t.timestamps null: false
    end
  end
end
