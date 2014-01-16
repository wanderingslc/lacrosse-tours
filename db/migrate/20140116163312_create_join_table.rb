class CreateJoinTable < ActiveRecord::Migration
  def up
    create_table :roles_users, :id => false do |t|
      t.integer :role_id
      t.integer :user_id
    end
  end

  def down
    destroy_table :roles_users, :id => false do |t|
      t.integer :role_id
      t.integer :user_id
    end
  end
end
