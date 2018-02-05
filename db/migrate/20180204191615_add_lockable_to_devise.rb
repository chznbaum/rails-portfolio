class AddLockableToDevise < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :unlock_token, :string
    add_index :users, :unlock_token, unique: true
  end
end
