class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :passwordDigest, :string
  end
end
