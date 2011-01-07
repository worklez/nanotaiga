class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :author_id
      t.integer :firm_profile_id
      t.string :subject
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
