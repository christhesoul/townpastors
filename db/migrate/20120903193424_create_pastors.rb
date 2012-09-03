class CreatePastors < ActiveRecord::Migration
  def change
    create_table :pastors do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
