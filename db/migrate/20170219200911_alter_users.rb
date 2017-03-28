class AlterUsers < ActiveRecord::Migration[5.0]
  def up
  	rename_table("users","admin_users")
  	add_column("admin_users","username",:string)
  	rename_column("admin_users","password","hashed_password")
  	puts "*** Adding an index ***"
  	add_index("admin_users","username")
  end

  def down
  	remove_index("admin_users","username")
  	rename_column("admin_users","hashed_password","password")
  	remove_column("admin_users","username")
  	rename_table("admin_users","users")
  end
end
