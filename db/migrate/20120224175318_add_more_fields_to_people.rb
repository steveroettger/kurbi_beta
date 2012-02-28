class AddMoreFieldsToPeople < ActiveRecord::Migration
  def change
	add_column :people, :location, :string
	add_column :people, :race, :string
	add_column :people, :sex, :string
	add_column :people, :bio, :text
	add_column :people, :first_occurrence, :string 
	add_column :people, :diagnosed, :string
	add_column :people, :condition, :string
	add_column :people, :doctor, :string
	add_column :people, :medications, :text
	add_column :people, :member_id, :integer
  end
end
