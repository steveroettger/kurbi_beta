class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :searchquery_id

      t.timestamps
    end
  end
end
