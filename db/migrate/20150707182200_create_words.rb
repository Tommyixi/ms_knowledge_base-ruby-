class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
    	t.string :title
    	t.text :definition

    	t.belongs_to :user

      t.timestamps
    end
  end
end
