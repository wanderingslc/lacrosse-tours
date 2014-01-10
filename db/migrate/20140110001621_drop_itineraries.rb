class DropItineraries < ActiveRecord::Migration
  def up
    drop_table :itineraries 
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
