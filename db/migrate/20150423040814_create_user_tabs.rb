class CreateUserTabs < ActiveRecord::Migration
  def change
    create_table :user_tabs do |t|
      t.belongs_to :tab, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
