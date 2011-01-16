class CreateFirmProfileTechnologies < ActiveRecord::Migration
  def self.up
    create_table :firm_profile_technologies do |t|
      t.text :technologies
      t.references :firm_profile

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_profile_technologies
  end
end
