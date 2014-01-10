class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :date
      t.text :description

      t.timestamps
    end
  end
end
