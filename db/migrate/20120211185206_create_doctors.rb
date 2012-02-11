class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.integer :person_id

      t.timestamps
    end
  end
end
