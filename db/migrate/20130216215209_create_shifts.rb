class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :pastor_id
      t.integer :patrol_id
      t.string :status
      t.timestamps
    end
  end
end
