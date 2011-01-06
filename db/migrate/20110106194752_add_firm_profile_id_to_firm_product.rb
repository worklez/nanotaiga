class AddFirmProfileIdToFirmProduct < ActiveRecord::Migration
  def self.up
    add_column :firm_products, :firm_profile_id, :integer
  end

  def self.down
    remove_column :firm_products, :firm_profile_id
  end
end
