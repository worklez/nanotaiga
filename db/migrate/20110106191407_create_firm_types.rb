class CreateFirmTypes < ActiveRecord::Migration
  def self.up
    create_table :firm_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_types
  end
end
