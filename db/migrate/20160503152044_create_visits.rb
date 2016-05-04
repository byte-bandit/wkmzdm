class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :timeframe

      t.timestamps null: false
    end
  end
end
