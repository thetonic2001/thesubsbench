class AddSocialLinksToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
    add_column :users, :vine, :string
    add_column :users, :youtube, :string
  end
end
