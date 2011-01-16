class CreateFirmProfileSites < ActiveRecord::Migration
  def self.up
    create_table :firm_profile_sites do |t|
      t.string :site
      t.references :firm_profile

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_profile_sites
  end
end
