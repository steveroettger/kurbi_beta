class CreateDiseaseProfiles < ActiveRecord::Migration
  def change
    create_table :disease_profiles do |t|
      t.string :name
      t.text :description
      t.integer :disease_id

      t.timestamps
    end
  end
end
