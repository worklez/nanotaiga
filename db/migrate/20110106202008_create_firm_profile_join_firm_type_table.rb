class CreateFirmProfileJoinFirmTypeTable < ActiveRecord::Migration
  def self.up
    create_table :firm_profiles_firm_types, :id => false do |t|
        t.references :firm_profile
        t.references :firm_type
        t.timestamps
      end
  end

  def self.down
    drop_table :firm_profiles_firm_types
  end
end
