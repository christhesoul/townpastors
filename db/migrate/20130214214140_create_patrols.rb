class CreatePatrols < ActiveRecord::Migration
  def change
    create_table :patrols do |t|
      t.date :patrol
      t.timestamps
    end
  end
end
