class AddPastorsPatrols < ActiveRecord::Migration
  def self.up
    create_table :pastors_patrols, :id => false do |t|
      t.integer :pastor_id
      t.integer :patrol_id
    end
  end

  def self.down
    drop_table :pastors_patrols
  end
end
