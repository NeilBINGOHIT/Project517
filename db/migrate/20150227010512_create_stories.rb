class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
	  t.string :name, null: false
	  t.text :description
	  t.integer :points, default: 0
	  t.integer :stage, default: 0
	  t.reference :user
	  t.reference :project
	  
      t.timestamps null: false
    end
  end
end
