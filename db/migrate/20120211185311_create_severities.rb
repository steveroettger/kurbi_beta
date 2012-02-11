class CreateSeverities < ActiveRecord::Migration
  def change
    create_table :severities do |t|
      t.integer :rank
      t.integer :patient_id
      t.integer :symptom_id
      t.date :date

      t.timestamps
    end
  end
end
