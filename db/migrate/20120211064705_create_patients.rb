class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :person_id
      t.string  :email
      t.string  :password_hash
      t.string  :password_salt
    

      t.timestamps
    end
  end
end
