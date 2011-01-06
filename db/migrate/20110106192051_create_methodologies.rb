class CreateMethodologies < ActiveRecord::Migration
  def self.up
    create_table :methodologies do |t|
      t.string :name
      t.integer :methodology_base_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :methodologies
  end
end
