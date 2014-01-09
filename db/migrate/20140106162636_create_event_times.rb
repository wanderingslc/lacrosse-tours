class CreateEventTimes < ActiveRecord::Migration
  def change
    create_table :event_times do |t|
      t.string :time

      t.timestamps
    end
  end
end
