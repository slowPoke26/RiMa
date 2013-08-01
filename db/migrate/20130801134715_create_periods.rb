class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :risk_id
      t.date :from_date
      t.time :from_time
      t.date :to_date
      t.time :to_time

      t.timestamps
    end
  end
end
