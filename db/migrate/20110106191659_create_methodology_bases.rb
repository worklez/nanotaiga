class CreateMethodologyBases < ActiveRecord::Migration
  def self.up
    create_table :methodology_bases do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :methodology_bases
  end
end
