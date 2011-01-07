class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :opt_author_id
      t.string :opt_secret_key
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
