class CreateFirmProfileConnections < ActiveRecord::Migration
  def self.up
    create_table :firm_profile_connections do |t|
      t.integer :source_firm_id
      t.integer :target_firm_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_profile_connections
  end
end
