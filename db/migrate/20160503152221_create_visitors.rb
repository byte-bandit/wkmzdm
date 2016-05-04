class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :email
      t.boolean :coming
      t.boolean :driver
      t.references :visit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
