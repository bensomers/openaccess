class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :author
      t.string :body
      t.references :post
#      t.references :parent
      t.timestamps
    end
  end
  
  def self.down
    drop_table :comments
  end
end
