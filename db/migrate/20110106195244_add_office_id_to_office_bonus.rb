class AddOfficeIdToOfficeBonus < ActiveRecord::Migration
  def self.up
    add_column :office_bonus, :office_id, :integer
  end

  def self.down
    remove_column :office_bonus, :office_id
  end
end
