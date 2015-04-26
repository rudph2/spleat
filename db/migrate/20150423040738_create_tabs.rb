class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.belongs_to :venue, index: true
      t.string :name
      t.timestamps null: false
    end
  end
end
