class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :social_security
      t.date    :birthday
   
      t.timestamps
    end
  end
end
