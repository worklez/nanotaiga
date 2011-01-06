class AddFirmProfileIdToMethodology < ActiveRecord::Migration
  def self.up
    add_column :methodologies, :firm_profile_id, :integer
  end

  def self.down
    remove_column :methodologies, :firm_profile_id
  end
end
