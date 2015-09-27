class AddRecipientToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recipient, :String
  end
end
