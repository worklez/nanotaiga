class CreateFirmProfiles < ActiveRecord::Migration
  def self.up
    create_table :firm_profiles do |t|
      t.string :name
      t.date :originated
      t.text :subject
      t.text :atmosphere
      t.text :technologies
      t.string :site

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_profiles
  end
end
