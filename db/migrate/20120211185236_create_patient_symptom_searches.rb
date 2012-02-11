class CreatePatientSymptomSearches < ActiveRecord::Migration
  def change
    create_table :patient_symptom_searches do |t|
      t.integer :symptom_id

      t.timestamps
    end
  end
end
