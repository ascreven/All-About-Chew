class AddUsernameToUsers < ActiveRecord::Migration
  def change
       add_column :users, :username, :string, null: false, default: '', index: true
  end
end
