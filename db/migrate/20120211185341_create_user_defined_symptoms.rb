class CreateUserDefinedSymptoms < ActiveRecord::Migration
  def change
    create_table :user_defined_symptoms do |t|
      t.string :name
      t.text :description
      t.integer :patient_id

      t.timestamps
    end
  end
end
