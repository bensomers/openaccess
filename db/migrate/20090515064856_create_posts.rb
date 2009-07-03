class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.column :user_id,      :string
      t.column :title,        :string
      t.column :content,      :string
      t.column :time,         :datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
