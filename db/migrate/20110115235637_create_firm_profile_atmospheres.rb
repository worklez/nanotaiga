class CreateFirmProfileAtmospheres < ActiveRecord::Migration
  def self.up
    create_table :firm_profile_atmospheres do |t|
      t.text :atmosphere
      t.references :firm_profile

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_profile_atmospheres
  end
end
