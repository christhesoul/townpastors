class AddPasswordResetToPastors < ActiveRecord::Migration
  def change
    add_column :pastors, :password_reset_token, :string

    add_column :pastors, :password_reset_sent_at, :datetime

  end
end
