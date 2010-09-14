class AddReferenceUser < ActiveRecord::Migration
  def self.up
    remove_column :shouts, :author_id
    add_column :shouts, :user_id, :integer
  end

  def self.down
  end
end

