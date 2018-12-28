class ChangeEmailColumnOnUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :email, null: true
  end
end
