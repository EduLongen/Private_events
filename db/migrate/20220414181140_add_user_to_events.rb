class AddUserToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :user, null: false
    add_foreign_key :events, :users, column: :user_id
  end
end
