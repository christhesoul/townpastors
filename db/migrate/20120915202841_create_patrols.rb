class CreatePatrols < ActiveRecord::Migration
  def change
    create_table :patrols do |t|
      t.date :date

      t.timestamps
    end
  end
end
