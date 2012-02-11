class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :person_id

      t.timestamps
    end
  end
end
