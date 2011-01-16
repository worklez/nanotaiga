class CreateFirmProfileOriginDates < ActiveRecord::Migration
  def self.up
    create_table :firm_profile_origin_dates do |t|
      t.datetime :originated
      t.references :firm_profile

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_profile_origin_dates
  end
end
