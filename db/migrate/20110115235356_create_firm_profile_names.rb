class CreateFirmProfileNames < ActiveRecord::Migration
  def self.up
    create_table :firm_profile_names do |t|
      t.string :name
      t.references :firm_profile

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_profile_names
  end
end
