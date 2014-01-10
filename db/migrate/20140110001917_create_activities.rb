class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :time
      t.string :description
      t.belongs_to :itinerary

      t.timestamps
    end
    add_index :activities, :itinerary_id
  end
end
