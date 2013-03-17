class AddAuthTokenToPastors < ActiveRecord::Migration
  def change
    add_column :pastors, :auth_token, :string

  end
end
