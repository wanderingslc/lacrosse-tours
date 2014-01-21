class CreateTourDates < ActiveRecord::Migration
  def up
    create_table :tour_dates do |t|
      t.string :date
      t.string :description
      t.boolean :scheduled

      t.timestamps
    end
  end

  def down
    drop_table :tour_dates do |t|
      t.string :date 
      t.string :description
      t.boolean :scheduled 
    end
  end
end
 