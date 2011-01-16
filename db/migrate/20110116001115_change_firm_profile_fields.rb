class ChangeFirmProfileFields < ActiveRecord::Migration
  def self.up
    change_table :firm_profiles do |t|
      t.remove :name, :originated, :subject, :atmosphere, :technologies, :site
    end
  end

  def self.down
    change_table :firm_profiles do |t|
      t.string :name
      t.date :originated
      t.text :subject
      t.text :atmosphere
      t.text :technologies
      t.string :site
    end
  end
end
