class CreateDailyRecords < ActiveRecord::Migration
  def change
    create_table :daily_records do |t|
      t.date :date
      t.integer :patient_id
      t.text :note

      t.timestamps
    end
  end
end
