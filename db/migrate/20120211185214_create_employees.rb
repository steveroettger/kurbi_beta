class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :person_id

      t.timestamps
    end
  end
end
