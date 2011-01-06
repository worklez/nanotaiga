class RemoveNameFromMethodology < ActiveRecord::Migration
  def self.up
    remove_column :methodologies, :name
  end

  def self.down
    add_column :methodologies, :name, :string
  end
end
