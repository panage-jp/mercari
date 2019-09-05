class DestroyCredentials < ActiveRecord::Migration[5.0]
  def change
    drop_table :credentials
  end
end
