class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :event

      t.timestamps
    end
  end
end
