class CreateShouts < ActiveRecord::Migration
  def self.up
    create_table :shouts do |t|
      t.string :title
      t.text :message
      t.integer :author_id
      t.date :create_at

      t.timestamps
    end
  end

  def self.down
    drop_table :shouts
  end
end
